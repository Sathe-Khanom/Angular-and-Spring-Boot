import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { ContactMessage } from '../model/contact.model';

@Injectable({
  providedIn: 'root'
})
export class ContactService {
private apiUrl = environment.apiBaseUrl + '/contact/';
  constructor(private http: HttpClient) { }

  sendMessage(data: ContactMessage): Observable<ContactMessage> {
    return this.http.post<ContactMessage>(this.apiUrl, data);
  }

 
  getAllMessages(): Observable<ContactMessage[]> {
    return this.http.get<ContactMessage[]>(this.apiUrl);
  }

}
