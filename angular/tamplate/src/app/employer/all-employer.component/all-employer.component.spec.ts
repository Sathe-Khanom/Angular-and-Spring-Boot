import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllEmployerComponent } from './all-employer.component';

describe('AllEmployerComponent', () => {
  let component: AllEmployerComponent;
  let fixture: ComponentFixture<AllEmployerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [AllEmployerComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AllEmployerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
