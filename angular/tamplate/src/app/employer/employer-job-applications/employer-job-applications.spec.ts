import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EmployerJobApplications } from './employer-job-applications';

describe('EmployerJobApplications', () => {
  let component: EmployerJobApplications;
  let fixture: ComponentFixture<EmployerJobApplications>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [EmployerJobApplications]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EmployerJobApplications);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
