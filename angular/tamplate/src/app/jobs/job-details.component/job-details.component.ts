import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { Job } from '../../model/job.model';
import { FormBuilder, FormGroup } from '@angular/forms';
import { JobService } from '../../service/job.service';
import { JobDTO } from '../../model/JobDTO';
import { ActivatedRoute } from '@angular/router';
import { ApplyService } from '../../service/apply.service';

@Component({
  selector: 'app-job-details.component',
  standalone: false,
  templateUrl: './job-details.component.html',
  styleUrl: './job-details.component.css'
})
export class JobDetailsComponent implements OnInit {

  job: JobDTO | null = null;

  constructor(
    private route: ActivatedRoute,
    private jobService: JobService,
    private cd: ChangeDetectorRef,
    private applyService: ApplyService
  ) { }

  ngOnInit(): void {
    const jobId = Number(this.route.snapshot.paramMap.get('id'));
    this.jobService.getJobById(jobId).subscribe({
      next: data => {
        this.job = data;
        console.log(data);
        this.cd.markForCheck();

      },
      error: err => console.error(err)
    });
  }


  onLogoError(event: any) {
    event.target.src = 'assets/images/default-logo.png'; // placeholder if image fails
  }


  applyJob(jobId: number, employerId: number) {
    // Prepare payload for API
    const applyPayload = {
      job: { id: jobId },
      employer: { id: employerId }
    };

    // Call service
    this.applyService.applyForJob(applyPayload).subscribe({
      next: (res) => {
        console.log('Application successful:', res);
        alert('You have successfully applied for this job!');
      },
      error: (err) => {
        console.error('Application failed:', err);
        alert('Failed to apply. Please login first.');
      }
    });
  }


}
