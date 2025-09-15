import { NgModule } from '@angular/core';
import { mapToCanActivate, RouterModule, Routes } from '@angular/router';
import { AlluserComponent } from './user/alluser.component/alluser.component';
import { AddjobseekerComponent } from './jobseekr/addjobseeker.component/addjobseeker.component';
import { JobSeekerProfileComponent } from './jobseekr/job-seeker-profile-component/job-seeker-profile-component';
import { LoginComponent } from './auth/login.component/login.component';
import { AddEmployerComponent } from './employer/add-employer.component/add-employer.component';
import { EmployerProfileComponent } from './employer/employer-profile.component/employer-profile.component';
import { AddJobComponent } from './jobs/add-job.component/add-job.component';
import { JobDetailsComponent } from './jobs/job-details.component/job-details.component';
import { AllJobs } from './jobs/all-jobs/all-jobs';
import { Dashboard } from './dashboard/dashboard/dashboard';
import { HomeComponent } from './layout/home/home.component/home.component';
import { ContactComponent } from './layout/contact/contact.component/contact.component';
import { Addlocation } from './location/addlocation/addlocation';
import { AddCategoryComponent } from './jobs/add-category.component/add-category.component';
import { MyjobsComponent } from './myjob/myjobs.component/myjobs.component';
import { AppliedJobsComponent } from './jobseekr/applied-jobs.component/applied-jobs.component';
import { EmployerJobApplications } from './employer/employer-job-applications/employer-job-applications';
import { CvDownloadComponent } from './cv/cv-download.component/cv-download.component';
import { CompanyComponent } from './employer/company/company.component/company.component';
import { AuthGuard } from './gurd/auth-guard-guard';
import { MessageListComponent } from './contact/message-list.component/message-list.component';
import { AllJobseekerComponent } from './jobseekr/all-jobseeker.component/all-jobseeker.component';
import { AllEmployerComponent } from './employer/all-employer.component/all-employer.component';

const routes: Routes = [
  { path: 'allUser', component: AlluserComponent , canActivate: [AuthGuard],
    data: { roles: ['ADMIN'] }}, 
  { path: 'addseeker', component: AddjobseekerComponent },
  { path: 'jobsekpro', component: JobSeekerProfileComponent , canActivate: [AuthGuard],
    data: { roles: ['JOBSEEKER','ADMIN'] }},
  { path: 'login', component: LoginComponent },
  { path: 'addemp', component: AddEmployerComponent },
  { path: 'emprofile', component: EmployerProfileComponent , canActivate: [AuthGuard],
    data: { roles: ['EMPLOYER','ADMIN'] }},
  // {path: 'addjob', component: AddJobComponent,  canActivate: [RoleGuard], data: { roles: [Role.EMPLOYER] } },
  { path: 'addjob', component: AddJobComponent, canActivate: [AuthGuard],
    data: { roles: ['EMPLOYER','ADMIN'] } },
  { path: 'jobdetails', component: JobDetailsComponent },
  { path: 'alljobs', component: AllJobs },
  { path: 'jobs/:id', component: JobDetailsComponent },
  { path: 'dash', component: Dashboard , canActivate: [AuthGuard],
    data: { roles: ['ADMIN'] }},
  { path: '', component: HomeComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'location', component: Addlocation,  canActivate: [AuthGuard],
    data: { roles: ['ADMIN'] } },
  { path: 'category', component: AddCategoryComponent ,  canActivate: [AuthGuard],
    data: { roles: ['ADMIN'] } },
  { path: 'myjob', component: MyjobsComponent ,  canActivate: [AuthGuard],
    data: { roles: ['EMPLOYER','ADMIN'] }},
  { path: 'apply', component: AppliedJobsComponent,  canActivate: [AuthGuard],
    data: { roles: ['JOBSEEKER','ADMIN'] } },
  { path: 'application/:id', component: EmployerJobApplications, canActivate: [AuthGuard],
    data: { roles: ['EMPLOYER','ADMIN'] } },
  { path: 'cv', component: CvDownloadComponent },
  { path: 'company', component: CompanyComponent },
  {path: 'message', component: MessageListComponent},
  {path: 'allseeker', component: AllJobseekerComponent},
  {path: 'allemp', component: AllEmployerComponent},



  { path: '**', redirectTo: '' } // fallback




];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
