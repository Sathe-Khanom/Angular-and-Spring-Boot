import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllJobseekerComponent } from './all-jobseeker.component';

describe('AllJobseekerComponent', () => {
  let component: AllJobseekerComponent;
  let fixture: ComponentFixture<AllJobseekerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [AllJobseekerComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AllJobseekerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
