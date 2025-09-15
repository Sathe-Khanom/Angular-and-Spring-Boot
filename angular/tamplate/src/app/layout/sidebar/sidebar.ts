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
    { label: ' All Jobs ', icon: 'fas fa-briefcase', route: '/alljobs' },    
    { label: 'Job Seekers', icon: 'fas fa-users', route: '/allseeker' },    
    { label: 'Employers', icon: 'fas fa-building', route: '/allemp'},   
    { label: 'LogIn', icon: 'fas fa-file-alt', route: '/login' },
    { label: 'Messages', icon: 'fas fa-envelope', route: '/message' },
    
  ];




}
