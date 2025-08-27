import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
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
export class HomeComponent implements OnInit {

  jobs: JobDTO[] = [];
  categories: Category[] = [];
  locations: Location[] = [];

  selectedCategoryId: number | null = null;
  selectedLocationId: number | null = null;

  constructor(
    private jobService: JobService,
    private categoryService: CategoryService,
    private locationService: LocationService,
    private cdr: ChangeDetectorRef
  ) { }

  ngOnInit(): void {
    this.loadCategories();
    this.loadLocations();
    this.loadAllJobs();
  }



  loadCategories() {
    this.categoryService.getAllCategories().subscribe(data => {
      this.categories = data;
      this.cdr.markForCheck();
      console.log(this.categories);
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
      console.log(this.jobs);
      this.cdr.markForCheck();
    });
  }

  filterJobs() {
    this.jobService.searchJobs(this.selectedCategoryId, this.selectedLocationId).subscribe((data) => {
      this.jobs = data;
      this.cdr.markForCheck();
    });
  }


  onLogoError(event: any) {
    event.target.src = 'assets/images/default-logo.png'; // placeholder if image fails
  }



}


