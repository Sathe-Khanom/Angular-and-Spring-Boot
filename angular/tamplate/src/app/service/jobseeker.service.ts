import { Inject, Injectable, PLATFORM_ID } from '@angular/core';
import { environment } from '../../environments/environment';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { AuthService } from './auth-service';
import { JobSeeker } from '../model/jobseeker.model';
import { isPlatformBrowser } from '@angular/common';
import { AllJobs } from '../jobs/all-jobs/all-jobs';
import { ApplyDTO } from '../model/applyDTO';
import { JobSeekerDTO } from '../model/jobseekerDto';

@Injectable({
  providedIn: 'root'
})
export class JobseekerService {

  private baseUrl = environment.apiBaseUrl + '/jobseeker/';

  constructor(private http: HttpClient,
    private authService: AuthService,
    @Inject(PLATFORM_ID) private platformId: Object

  ) { }



  registerJobSeeker(user: any, jobSeeker: any, photo: File): Observable<any> {
    const formData = new FormData();
    formData.append('user', JSON.stringify(user));
    formData.append('jobSeeker', JSON.stringify(jobSeeker));
    formData.append('photo', photo);

    return this.http.post(this.baseUrl, formData);
  }

  getProfile(): Observable<JobSeeker> {

    let headers = new HttpHeaders();
    if (isPlatformBrowser(this.platformId)) {
      const token = localStorage.getItem('authToken');

      if (token) {
        headers = headers.set('Authorization', 'Bearer ' + token);
      }
    }

    return this.http.get<JobSeeker>(`${this.baseUrl}profile`, { headers });
  }



  getJobSeekerProfile(): JobSeeker {
    return {
      id: 0, // অথবা যেকোনো ডিফল্ট আইডি
      name: '',
      email: '',
      phone: '',
      gender: '',
      address: '',
      dateOfBirth: new Date(), // অথবা new Date('') দিলে ইনভ্যালিড হবে না
      photo: '',

      educations: [],
      experiences: [],
      skills: [],
      languages: [],
      hobbies: [],
      extracurricular: [],
      references: [],
      trainings: [],
      summeries: []
    };
  }


   getFullJobSeeker(jobSeekerId: number): Observable<JobSeekerDTO> {
    return this.http.get<JobSeekerDTO>(`${this.baseUrl}${jobSeekerId}/full`);
  }


  
     getAllJobSeekers(): Observable<JobSeeker[]> {
      return this.http.get<JobSeeker[]>(this.baseUrl+"all");
    }  

}
