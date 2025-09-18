import { ChangeDetectorRef, Component, ElementRef, Input, ViewChild } from '@angular/core';
import { ApplyService } from '../../service/apply.service';
import { ApplyDTO } from '../../model/applyDTO';
import { ActivatedRoute } from '@angular/router';
import { JobSeeker } from '../../model/jobseeker.model';
import { Education } from '../../model/education.model';
import { Experience } from '../../model/experience.model';
import { Skill } from '../../model/skill.model';
import { Training } from '../../model/training.model';
import { Extracurricular } from '../../model/extracurricular.model';
import { Language } from '../../model/language.model';
import { Hobby } from '../../model/hobby.model';
import { Refference } from '../../model/refference.model';
import { CvDownloadComponent } from '../../cv/cv-download.component/cv-download.component';
import { JobseekerService } from '../../service/jobseeker.service';
import { JobSeekerDTO } from '../../model/jobseekerDto';
import { Summery } from '../../model/summery.model';

@Component({
  selector: 'app-employer-job-applications',
  standalone: false,
  templateUrl: './employer-job-applications.html',
  styleUrl: './employer-job-applications.css'
})
export class EmployerJobApplications {

  @Input() jobSeeker!: JobSeeker;
  @Input() educations: Education[] = [];
  @Input() experiences: Experience[] = [];
  @Input() skills: Skill[] = [];
  @Input() trainings: Training[] = [];
  @Input() extracurriculars: Extracurricular[] = [];
  @Input() languages: Language[] = [];
  @Input() hobbies: Hobby[] = [];
  @Input() references: Refference[] = [];
  @Input() summery: Summery[] = [];



  @ViewChild(CvDownloadComponent) cvDownloader!: CvDownloadComponent;

  applications: ApplyDTO[] = [];
  loading = false;
  errorMessage = '';

  jobId!: number;

  constructor(
    private applyService: ApplyService,
    private route: ActivatedRoute,
    private cd: ChangeDetectorRef,
    private jobSeekerService: JobseekerService

  ) { }

  ngOnInit(): void {
    const paramJobId = this.route.snapshot.paramMap.get('id');
    if (paramJobId) {
      this.jobId = Number(paramJobId);
      this.fetchApplications();
    } else {
      this.errorMessage = 'Job ID not provided';
    }
  }

  fetchApplications(): void {
    this.loading = true;
    this.applyService.getApplicationsForJob(this.jobId).subscribe({
      next: (data) => {
        this.applications = data;
        this.cd.markForCheck();
        console.log(this.applications);
        this.loading = false;
      },
      error: (err) => {
        console.error(err);
        this.errorMessage = 'Failed to load applications';
        this.loading = false;
      }
    });



  }



  downloadCv(id: number) {
    if (!this.cvDownloader) return;

    this.jobSeekerService.getFullJobSeeker(id)
      .subscribe({
        next: (jobSeeker: JobSeekerDTO | null) => {
          if (!jobSeeker) return;

          const fullJobSeeker: JobSeeker = {
            ...jobSeeker,
            dateOfBirth: new Date(jobSeeker.dateOfBirth),
            educations: jobSeeker.educations ?? [],
            experiences: jobSeeker.experiences ?? [],
            skills: jobSeeker.skills ?? [],
            trainings: jobSeeker.trainings ?? [],
            extracurricular: jobSeeker.extracurriculars ?? [],
            languages: jobSeeker.languages ?? [],
            hobbies: jobSeeker.hobbies ?? [],
            references: jobSeeker.references ?? [],
            summeries: jobSeeker.summeries ?? []
          };

          setTimeout(() => {
            this.cvDownloader.jobSeeker = fullJobSeeker;
            this.cvDownloader.educations = fullJobSeeker.educations;
            this.cvDownloader.experiences = fullJobSeeker.experiences;
            this.cvDownloader.skills = fullJobSeeker.skills;
            this.cvDownloader.trainings = fullJobSeeker.trainings;
            this.cvDownloader.extracurriculars = fullJobSeeker.extracurricular;
            this.cvDownloader.languages = fullJobSeeker.languages;
            this.cvDownloader.hobbies = fullJobSeeker.hobbies;
            this.cvDownloader.references = fullJobSeeker.references;
            this.cvDownloader.summeries = fullJobSeeker.summeries;

            this.cd.detectChanges();
            this.cvDownloader.downloadCV();
          });
        },
        error: (err) => console.error(err)
      });
  }





}









