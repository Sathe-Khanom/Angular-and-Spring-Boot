export interface JobDTO {
  id: number;
  title: string;
  description: string;
  salary: number;
  jobType: string;
  postedDate: string;
    category: {
    id: number;
    name: string;
  };
  location: {
    id: number;
    name: string;
  };

  // Employer info
  employerId: number;
  companyName: string;
  contactPerson: string;
  email: string;
  phone: string;
  companyWebsite: string;
  logo: string
}