import { ChangeDetectorRef, Component } from '@angular/core';
import { JobService } from '../../service/job.service';
import { JobDTO } from '../../model/JobDTO';

@Component({
  selector: 'app-myjobs.component',
  standalone: false,
  templateUrl: './myjobs.component.html',
  styleUrl: './myjobs.component.css'
})
export class MyjobsComponent {



  jobs: JobDTO[] = [];
  loading = true;
  errorMsg: string | null = null;

  constructor(private jobService: JobService, private cd: ChangeDetectorRef) { }


  ngOnInit(): void {
    this.fetchMyJobs();
  }

  fetchMyJobs(): void {
    this.jobService.getMyJobs().subscribe({
      next: (data) => {
        this.jobs = data;
        this.cd.markForCheck();
        this.loading = false;
      },
      error: (err) => {
        console.error(err);
        this.errorMsg = 'Failed to load jobs.';
        this.loading = false;
      }
    });
  }

  onDeleteJob(id: number): void {
  if (confirm('Are you sure you want to delete this job?')) {
    this.jobService.deleteJob(id).subscribe({
      next: () => {
        this.jobs = this.jobs.filter(job => job.id !== id); // UI theke remove kora
        alert('Job deleted successfully');
      },
      error: err => {
        console.error('Delete failed', err);
        alert('Failed to delete job');
      }
    });
  }
}


}
