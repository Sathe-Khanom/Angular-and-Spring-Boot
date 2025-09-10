import { ChangeDetectorRef, Component } from '@angular/core';
import { Employer } from '../../../model/employer.model';
import { EmployerService } from '../../../service/employer.service';
import { JobDTO } from '../../../model/JobDTO';
import { JobService } from '../../../service/job.service';
import { ApplyService } from '../../../service/apply.service';

@Component({
  selector: 'app-company.component',
  standalone: false,
  templateUrl: './company.component.html',
  styleUrl: './company.component.css'
})
export class CompanyComponent {


  employers: Employer[] = [];
  selectedCompany: string = '';
  jobs: JobDTO[] = [];

  constructor(
    private employerService: EmployerService, 
    private jobService: JobService, 
    private cd: ChangeDetectorRef,
    private applyService: ApplyService
  ) { }

  ngOnInit(): void {
    this.employerService.getAllEmployers().subscribe({
      next: (data) => this.employers = data,
      error: (err) => console.error('Error loading employers', err)
    });
  }

onCompanyChange(): void {
  console.log('Selected company:', this.selectedCompany);

  if (this.selectedCompany) {
    this.jobService.getJobsByCompany(this.selectedCompany).subscribe({
      next: (data) => {
        console.log('Jobs received from API:', data);
        this.jobs = data;
        this.cd.markForCheck();
      },
      error: (err) => console.error('Error loading jobs', err),
    });
  } else {
    console.log('No company selected, clearing jobs list.');
    this.jobs = [];
  }
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
