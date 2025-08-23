import { Component, OnInit } from '@angular/core';
import { JobService } from '../../../service/job.service';
import { Category } from '../../../model/category.model';
import { CategoryService } from '../../../service/category.service';
import { LocationService } from '../../../service/location.service';
import { JobDTO } from '../../../model/JobDTO';
import { Location } from '../../../model/location.model';

@Component({
  selector: 'app-home.component',
  standalone: false,
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent implements OnInit{

jobs: JobDTO[] = []; 
  categories: Category[] = [];
  locations: Location[] = []; // ✅ updated

  selectedCategoryId: number | null = null;
  selectedLocationId: number | null = null;

  constructor(
    private jobService: JobService,
    private categoryService: CategoryService,
    private locationService: LocationService
  ) {}

  ngOnInit(): void {
    this.loadCategories();
    this.loadLocations();
    this.loadAllJobs();
  }

loadCategories() {
  this.categoryService.getAllCategories().subscribe({
    next: (data) => {
      this.categories = data;
    },
    error: (err) => {
      console.error('Error loading categories:', err);
    }
  });
}

  loadLocations() {
    this.locationService.getAllLocations().subscribe((data) => {
      this.locations = data;
    });
  }

 loadAllJobs() {
  this.jobService.getAllJobs().subscribe((data) => {
    console.log('All jobs:', data);
    this.jobs = data;
  });
}

  filterJobs() {
    this.jobService.searchJobs(this.selectedCategoryId, this.selectedLocationId).subscribe((data) => {
      this.jobs = data;
    });
  }  
}


