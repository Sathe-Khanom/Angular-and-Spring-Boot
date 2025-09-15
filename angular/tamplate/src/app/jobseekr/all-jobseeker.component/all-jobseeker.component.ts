import { Component, OnInit } from '@angular/core';
import { JobSeeker } from '../../model/jobseeker.model';
import { JobseekerService } from '../../service/jobseeker.service';

@Component({
  selector: 'app-all-jobseeker.component',
  standalone: false,
  templateUrl: './all-jobseeker.component.html',
  styleUrl: './all-jobseeker.component.css'
})
export class AllJobseekerComponent implements OnInit {

 seekers: JobSeeker[] = [];
  editingJobSeeker: JobSeeker | null = null;

  constructor(private seekerService:JobseekerService) {}

  ngOnInit(): void {
    this.loadJobSeekers();
  }

  loadJobSeekers(): void {
    this.seekerService.getAllJobSeekers().subscribe(data => {
      this.seekers = data;
    });
  }

}
