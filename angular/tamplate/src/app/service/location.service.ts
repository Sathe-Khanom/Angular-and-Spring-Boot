import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Location } from '../model/location.model';

@Injectable({
  providedIn: 'root'
})
export class LocationService {

private apiUrl = environment.apiBaseUrl + '/locations/';

  constructor(private http: HttpClient) { }

   getAllLocations(): Observable<Location[]> {
    return this.http.get<Location[]>(this.apiUrl);
  }
}
