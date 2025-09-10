import { ActivatedRouteSnapshot, CanActivate, CanActivateFn, Router, RouterStateSnapshot } from '@angular/router';
import { AuthService } from '../service/auth-service';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {

  constructor(private authService: AuthService, private router: Router) {}

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean {

    // Check if user is logged in
    if (!this.authService.isLoggIn()) {
      this.router.navigate(['/login']);
      return false;
    }

    // Check roles if provided in route data
    const expectedRoles: string[] = route.data['roles'];
    if (expectedRoles && !this.authService.hasRole(expectedRoles)) {
      this.router.navigate(['/unauthorized']);
      return false;
    }

    return true;
  }

  
}