import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Inject, Injectable, PLATFORM_ID } from '@angular/core';
import { environment } from '../../environments/environment';
import { isPlatformBrowser } from '@angular/common';
import { Summery } from '../model/summery.model';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SummeryService {

 private apiUrl = environment.apiBaseUrl + '/summery/'; 

  constructor(
    private http: HttpClient,
        @Inject(PLATFORM_ID) private platformId: Object
  ) { }

// Add Summery
  addSummery(summery: Summery): Observable<Summery> {

    let headers = new HttpHeaders();

    if (isPlatformBrowser(this.platformId)) {
      const token = localStorage.getItem('authToken');
      if (token) {
        headers = headers.set('Authorization', 'Bearer ' + token);
      }
    }

    return this.http.post<Summery>(`${this.apiUrl}add`, summery , { headers });
  }

  // Get all experiences for current JobSeeker
  getAllSummery(): Observable<Summery[]> {
    let headers = new HttpHeaders();

    if (isPlatformBrowser(this.platformId)) {
      const token = localStorage.getItem('authToken');
      if (token) {
        headers = headers.set('Authorization', 'Bearer ' + token);
      }
    }

    return this.http.get<Summery[]>(`${this.apiUrl}all`,  { headers });
  }

  // Delete by ID
  deleteSummery(id: number): Observable<void> {

     let headers = new HttpHeaders();

    if (isPlatformBrowser(this.platformId)) {
      const token = localStorage.getItem('authToken');
      if (token) {
        headers = headers.set('Authorization', 'Bearer ' + token);
      }
    }
    return this.http.delete<void>(`${this.apiUrl}${id}` , { headers });
  }

}
