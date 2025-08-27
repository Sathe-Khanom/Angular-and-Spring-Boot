import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Category } from '../model/category.model';
import { Location } from '../model/location.model';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {
private apiUrl = environment.apiBaseUrl + '/categories/';

  constructor(private http: HttpClient) { }

   getAllCategories(): Observable<Category[]> {
    return this.http.get<Category[]>(this.apiUrl);
  }


getLocationsByCategories(categoriId: number): Observable<Location[]> {
    return this.http.get<Location[]>(`${this.apiUrl}by-category ${categoriId}`);
  }



   getCategoryById(id: number): Observable<Category> {
    return this.http.get<Category>(`${this.apiUrl}/${id}`);
  }

  createCategory(category: Category): Observable<Category> {
    return this.http.post<Category>(this.apiUrl, category);
  }

  updateCategory(id: number, category: Category): Observable<Category> {
    return this.http.put<Category>(`${this.apiUrl}/${id}`, category);
  }

  deleteCategory(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/${id}`);
  }
}
