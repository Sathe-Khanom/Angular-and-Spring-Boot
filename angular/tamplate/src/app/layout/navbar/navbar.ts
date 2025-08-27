import { Component } from '@angular/core';
import { AuthService } from '../../service/auth-service';

@Component({
  selector: 'app-navbar',
  standalone: false,
  templateUrl: './navbar.html',
  styleUrl: './navbar.css'
})
export class Navbar {


  constructor(private authService: AuthService){}


   onLogout(): void {
    this.authService.logout();
  }

}
