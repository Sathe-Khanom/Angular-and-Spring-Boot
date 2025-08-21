import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class DashboardService {
    private apiUrl = environment.apiBaseUrl + '/admin/';

  constructor(private http: HttpClient) { }

    getDashboardCounts(): Observable<any> {
    return this.http.get(`${this.apiUrl}counts`);
  }
}
