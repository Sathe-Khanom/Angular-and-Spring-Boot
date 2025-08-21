import { Component } from '@angular/core';

@Component({
  selector: 'app-sidebar',
  standalone: false,
  templateUrl: './sidebar.html',
  styleUrl: './sidebar.css'
})
export class Sidebar {

  menuItems = [
    { label: 'Dashboard', icon: 'fas fa-tachometer-alt', route: '/dash' },
    { label: 'Job Listings', icon: 'fas fa-briefcase', route: '/alljobs' },
    { label: 'Add Job', icon: 'fas fa-plus-circle', route: '/addjob' },
    { label: 'Job Seekers', icon: 'fas fa-users', route: '/jobsekpro' },
    { label: 'Add Seeker', icon: 'fas fa-user-plus', route: '/addseeker' },
    { label: 'Employers', icon: 'fas fa-building', route: '/emprofile'},   
    { label: 'Add Employer', icon: 'fas fa-user-tie', route: '/addemp' },
    { label: 'LogIn', icon: 'fas fa-file-alt', route: '/login' },
    { label: 'Messages', icon: 'fas fa-envelope', route: '/messages' },
    { label: 'Reports', icon: 'fas fa-chart-line', route: '/reports' },
    { label: 'Settings', icon: 'fas fa-cogs', route: '/settings' }
  ];




}
