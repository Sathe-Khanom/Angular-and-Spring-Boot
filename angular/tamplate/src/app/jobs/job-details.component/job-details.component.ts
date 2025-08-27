import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { Job } from '../../model/job.model';
import { FormBuilder, FormGroup } from '@angular/forms';
import { JobService } from '../../service/job.service';
import { JobDTO } from '../../model/JobDTO';
import { ActivatedRoute } from '@angular/router';

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
    private cd: ChangeDetectorRef
  ) { }

  ngOnInit(): void {
    const jobId = Number(this.route.snapshot.paramMap.get('id'));
    this.jobService.getJobById(jobId).subscribe({
      next: data => {
        this.job = data;
        this.cd.markForCheck();

      },
      error: err => console.error(err)
    });
  }


  onLogoError(event: any) {
  event.target.src = 'assets/images/default-logo.png'; // placeholder if image fails
}


applyJob(jobId: number) {
  console.log('Apply clicked for Job ID:', jobId);
  // Here you can navigate to an apply form or call an API
  // Example: this.router.navigate(['/apply', jobId]);
}

}
