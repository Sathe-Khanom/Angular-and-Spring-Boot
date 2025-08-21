import { Component, OnInit } from '@angular/core';
import { DashboardService } from '../../service/dashboard.service';

@Component({
  selector: 'app-dashboard',
  standalone: false,
  templateUrl: './dashboard.html',
  styleUrl: './dashboard.css'
})
export class Dashboard implements OnInit {

totalJobs: number = 0;
  totalSeekers: number = 0;
  totalEmployers: number = 0;
  totalApplications: number = 0;

  constructor(private dashboardService: DashboardService) {}

  ngOnInit(): void {
    this.dashboardService.getDashboardCounts().subscribe(data => {
      this.totalJobs = data.jobs;
      this.totalSeekers = data.seekers;
      this.totalEmployers = data.employers;
     
    });
  }



}
