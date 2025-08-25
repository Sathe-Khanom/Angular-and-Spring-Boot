import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ContactService } from '../../../service/contact.service';

@Component({
  selector: 'app-contact.component',
  standalone: false,
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.css'
})
export class ContactComponent {

 contactForm: FormGroup;
  successMessage = '';
  errorMessage = '';

  constructor(private fb: FormBuilder, private contactService: ContactService) {
    this.contactForm = this.fb.group({
      name: ['', [Validators.required, Validators.minLength(3)]],
      email: ['', [Validators.required, Validators.email]],
      message: ['', [Validators.required, Validators.minLength(10)]]
    });
  }

  onSubmit() {
    if (this.contactForm.valid) {
      this.contactService.sendMessage(this.contactForm.value).subscribe({
        next: () => {
          this.successMessage = 'Message sent successfully!';
          this.errorMessage = '';
          this.contactForm.reset();
        },
        error: () => {
          this.errorMessage = 'Something went wrong. Please try again.';
          this.successMessage = '';
        }
      });
    } else {
      this.errorMessage = 'Please fill the form correctly.';
      this.successMessage = '';
    }
  }  

}
