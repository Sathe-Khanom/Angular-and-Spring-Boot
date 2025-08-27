import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
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
import { RoleGuard } from './auth/role-guard';
import { Role } from './model/roles';

const routes: Routes = [
  {path: 'allUser' , component:AlluserComponent},
  {path: 'addseeker' , component:AddjobseekerComponent},
  {path: 'jobsekpro' , component:JobSeekerProfileComponent},
  {path: 'login' , component:LoginComponent},
  {path: 'addemp', component:AddEmployerComponent},
  {path: 'emprofile', component: EmployerProfileComponent},
  // {path: 'addjob', component: AddJobComponent,  canActivate: [RoleGuard], data: { roles: [Role.EMPLOYER] } },
  {path: 'addjob', component: AddJobComponent,  },
  {path: 'jobdetails', component: JobDetailsComponent},
  {path: 'alljobs', component: AllJobs},
  { path: 'jobs/:id', component: JobDetailsComponent },
  {path: 'dash', component: Dashboard},
  {path: '' , component: HomeComponent},
  {path: 'contact', component: ContactComponent},
  {path: 'location', component: Addlocation},
    {path: 'category', component: AddCategoryComponent},

  
  { path: '**', redirectTo: '' } // fallback
 



];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
