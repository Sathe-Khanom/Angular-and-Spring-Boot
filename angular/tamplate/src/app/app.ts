import { Component } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.html',
  standalone: false,
  styleUrl: './app.css'
})
export class App {
  protected title = 'tamplate';


  showSidebar = true;
  
  constructor(private router: Router) {
    this.router.events.subscribe(event => {
      if (event instanceof NavigationEnd) {
        const jobsRoutes = event.url.startsWith('/alljobs/') || event.url.startsWith('/jobs/') || event.url.startsWith('/home/');
        this.showSidebar = jobsRoutes;
      }
    });
  }
  
}
