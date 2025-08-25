export class ContactMessage {
  id?: number;      // backend থেকে save হলে id আসবে (optional)
  name!: string;
  email!: string;
  message!: string;

  constructor(name: string, email: string, message: string, id?: number) {
    this.name = name;
    this.email = email;
    this.message = message;
    if (id) this.id = id;
  }
}