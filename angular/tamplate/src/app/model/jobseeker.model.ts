import { Education } from "./education.model";
import { Experience } from "./experience.model";
import { Extracurricular } from "./extracurricular.model";
import { Hobby } from "./hobby.model";
import { Language } from "./language.model";
import { Refference } from "./refference.model";
import { Skill } from "./skill.model";
import { Training } from "./training.model";

export interface JobSeeker{


       id: number;
       name: string;
       email: string;
       phone: string;
       gender: string;
       address: string;
       dateOfBirth: Date;
       photo : string;
       
educations: Education[];
  experiences: Experience[];
  skills: Skill[];
  languages: Language[];
  hobbies: Hobby[];
  extracurricular: Extracurricular[];
  references: Refference[];
  trainings: Training[];



}