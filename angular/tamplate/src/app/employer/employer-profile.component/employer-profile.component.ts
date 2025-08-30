import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { EmployerService } from '../../service/employer.service';
import { Category } from '../../model/category.model';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { JobService } from '../../service/job.service';
import { LocationService } from '../../service/location.service';
import { CategoryService } from '../../service/category.service';
import { Job } from '../../model/job.model';
import { AuthService } from '../../service/auth-service';

@Component({
  selector: 'app-employer-profile.component',
  standalone: false,
  templateUrl: './employer-profile.component.html',
  styleUrl: './employer-profile.component.css'
})
export class EmployerProfileComponent implements OnInit {
   
employer: any;


  constructor(
    private employerService: EmployerService,
    private cdr: ChangeDetectorRef,
    private fb: FormBuilder,
    private authService: AuthService

 ){
    }

   ngOnInit(): void {
    this.getProfile();

  }

  getProfile() {

    this.employerService.getProfile().subscribe({
      next: (data) => {
        this.employer = data;
        console.log(data);
        this.cdr.markForCheck();

      },
      error: (err) => {
        console.error('Failed to load profile', err);
      }
    });
  }


    onLogout(): void {
    this.authService.logout();
  }


  
  

}
