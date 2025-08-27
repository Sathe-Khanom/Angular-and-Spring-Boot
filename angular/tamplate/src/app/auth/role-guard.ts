import { Injectable } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

import { Role } from '../model/roles';
import { AuthService } from '../service/auth-service';
import { map, Observable, take } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class RoleGuard implements CanActivate {

  constructor(private authService: AuthService, private router: Router) {}

  
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean {
  const expectedRoles: string[] = route.data['roles'];
  const userRole = this.authService.getUserRole();

  if (!userRole) {
    this.router.navigate(['/login']);
    return false;
  }

  if (!expectedRoles.includes(userRole)) {
    this.router.navigate(['/unauthorized']);
    return false;
  }

  return true;
}






}