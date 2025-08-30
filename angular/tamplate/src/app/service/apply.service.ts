import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Inject, Injectable, PLATFORM_ID } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';
import { isPlatformBrowser } from '@angular/common';

@Injectable({
  providedIn: 'root'
})
export class ApplyService {


  private apiUrl = environment.apiBaseUrl + '/applications';

  constructor(
    private http: HttpClient,
    @Inject(PLATFORM_ID) private platformId: Object
  ) { }




  applyForJob(apply: any): Observable<any> {

    let headers = new HttpHeaders();
    if (isPlatformBrowser(this.platformId)) {

      const token = localStorage.getItem('authToken'); // JWT
      headers = new HttpHeaders({
        'Authorization': `Bearer ${token}`
      });
    }

    return this.http.post<any>(`${this.apiUrl}`, apply, { headers });
  }



}
