import { Component, OnInit } from '@angular/core';
import { Employer } from '../../model/employer.model';
import { EmployerService } from '../../service/employer.service';

@Component({
  selector: 'app-all-employer.component',
  standalone: false,
  templateUrl: './all-employer.component.html',
  styleUrl: './all-employer.component.css'
})
export class AllEmployerComponent implements OnInit{

 employers: Employer[] = [];
  editingEmployer: Employer | null = null;

  constructor(private employerService: EmployerService) {}

  ngOnInit(): void {
    this.loadEmployers();
  }

  loadEmployers(): void {
    this.employerService.getAllEmployers().subscribe(data => {
      this.employers = data;
    });
  }

deleteEmployer(id: number): void {
  if (confirm('Are you sure you want to delete this employer?')) {
    console.log('Deleting employer with id:', id);
    this.employerService.delete(id).subscribe({
      next: () => {
        console.log('Delete successful');
        this.loadEmployers();
      },
      error: (err) => {
        console.error('Delete failed', err);
      }
    });
  } else {
    console.log('Delete cancelled');
  }
}




}
