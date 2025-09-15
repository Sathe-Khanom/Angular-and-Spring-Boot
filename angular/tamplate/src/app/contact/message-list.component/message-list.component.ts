import { Component, OnInit } from '@angular/core';
import { ContactMessage } from '../../model/contact.model';
import { ContactService } from '../../service/contact.service';

@Component({
  selector: 'app-message-list.component',
  standalone: false,
  templateUrl: './message-list.component.html',
  styleUrl: './message-list.component.css'
})
export class MessageListComponent implements OnInit {

  messages: ContactMessage[] = [];
  isLoading = true;
  error: string | null = null;

  constructor(private contactService: ContactService) {}

  ngOnInit(): void {
    this.contactService.getAllMessages().subscribe({
      next: data => {
        this.messages = data;
        this.isLoading = false;
      },
      error: err => {
        this.error = 'Failed to load messages';
        console.error(err);
        this.isLoading = false;
      }
    });
  }

}
