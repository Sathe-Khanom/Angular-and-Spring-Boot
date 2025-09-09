import { Education } from "./education.model";
import { Experience } from "./experience.model";
import { Extracurricular } from "./extracurricular.model";
import { Hobby } from "./hobby.model";
import { JobSeeker } from "./jobseeker.model";
import { Language } from "./language.model";
import { Refference } from "./refference.model";
import { Skill } from "./skill.model";
import { Training } from "./training.model";

export interface ApplyDTO {
  id: number;
  jobId: number;
  jobTitle: string;
  employerId: number;
  employerName: string;
  jobSeekerId: number;
  jobSeekerName: string;




  // Add detailed CV info
  jobSeeker?: JobSeeker;
  educations?: Education[];
  experiences?: Experience[];
  skills?: Skill[];
  trainings?: Training[];
  extracurriculars?: Extracurricular[];
  languages?: Language[];
  hobbies?: Hobby[];
  references?: Refference[];
}