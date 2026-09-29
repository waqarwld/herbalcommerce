import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface Product { id: number; sku: string; name: string; slug: string; price: number; salePrice?: number; status: string; isFeatured: boolean; }

@Injectable({ providedIn: 'root' })
export class ProductService {
  private base = '/api/v1/products';
  constructor(private http: HttpClient) {}
  getFeatured(): Observable<Product[]> { return this.http.get<Product[]>(this.base + '?featured=true'); }
  getById(id: number): Observable<Product> { return this.http.get<Product>(this.base + '/' + id); }
}
