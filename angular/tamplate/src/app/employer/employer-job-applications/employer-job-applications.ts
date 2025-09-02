import { ChangeDetectorRef, Component, Input } from '@angular/core';
import { ApplyService } from '../../service/apply.service';
import { ApplyDTO } from '../../model/applyDTO';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-employer-job-applications',
  standalone: false,
  templateUrl: './employer-job-applications.html',
  styleUrl: './employer-job-applications.css'
})
export class EmployerJobApplications {

  applications: ApplyDTO[] = [];
  loading = false;
  errorMessage = '';

  jobId!: number;

  constructor(
    private applyService: ApplyService,
    private route: ActivatedRoute,
    private cd: ChangeDetectorRef

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


}
