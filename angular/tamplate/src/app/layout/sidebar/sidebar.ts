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
     { label: 'Messages', icon: 'fas fa-envelope', route: '/message' },  
    { label: 'Add Category', icon: 'fas fa-tags', route: '/category' },   
    { label: 'Add Location', icon: 'fas fa-map-marker-alt', route: '/location' },
    {label: 'Profile', icon:'fas fa-user', route:'/emprofile'}
  ];




}
