
import { Education } from './education.model';
import { Experience } from './experience.model';
import { Extracurricular } from './extracurricular.model';
import { Hobby } from './hobby.model';
import { Language } from './language.model';
import { Refference } from './refference.model';
import { Skill } from './skill.model';
import { Summery } from './summery.model';
import { Training } from './training.model';

export interface JobSeekerDTO {
  id: number;
  name: string;
  email: string;
  phone: string;
  gender: string;
  address: string;
  dateOfBirth: string;
  photo: string;
  educations?: Education[];
  experiences?: Experience[];
  skills?: Skill[];
  trainings?: Training[];
  extracurriculars?: Extracurricular[];
  languages?: Language[];
  hobbies?: Hobby[];
  references?: Refference[];
  summeries?: Summery[];
}
