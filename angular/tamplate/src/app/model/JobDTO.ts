export interface JobDTO {
  id: number;
  title: string;
  description: string;
  salary: number;
  jobType: string;
  postedDate: string;

  // Category info
  categoryId?: number;
  categoryName?: string;

  // Location info
  locationId?: number;
  locationName?: string;

  // Employer info
  employerId?: number;
  companyName?: string;
  contactPerson?: string;
  email?: string;
  phone?: string;
  companyWebsite?: string;
  logo?: string;
}
