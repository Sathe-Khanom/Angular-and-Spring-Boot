import { Component, ElementRef, Input, ViewChild, AfterViewInit } from '@angular/core';
import { JobSeeker } from '../../model/jobseeker.model';
import { Education } from '../../model/education.model';
import { Experience } from '../../model/experience.model';
import { Skill } from '../../model/skill.model';
import { Training } from '../../model/training.model';
import { Extracurricular } from '../../model/extracurricular.model';
import { Language } from '../../model/language.model';
import { Hobby } from '../../model/hobby.model';
import { Refference } from '../../model/refference.model';
import { Summery } from '../../model/summery.model';

@Component({
  selector: 'app-cv-download',
  standalone: false,
  templateUrl: './cv-download.component.html',
  styleUrls: ['./cv-download.component.css']
})
export class CvDownloadComponent implements AfterViewInit {

  
  @Input() jobSeeker!: JobSeeker;
  @Input() educations: Education[] = [];
  @Input() experiences: Experience[] = [];
  @Input() skills: Skill[] = [];
  @Input() trainings: Training[] = [];
  @Input() extracurriculars: Extracurricular[] = [];
  @Input() languages: Language[] = [];
  @Input() hobbies: Hobby[] = [];
  @Input() references: Refference[] = [];
  @Input() summery: Summery[] = [];

  @ViewChild('cvContent') cvContent!: ElementRef;

  ngAfterViewInit(): void {
    // Optional debug
  }

  async downloadCV(): Promise<void> {
    const element = this.cvContent.nativeElement;

    // Temporarily show the hidden CV content
    element.classList.remove('hidden');

    const html2pdf = (await import('html2pdf.js')).default;

    const opt = {
      margin: 0.5,
      filename: `${this.jobSeeker.name}_CV.pdf`,
      image: { type: 'jpeg', quality: 0.98 },
      html2canvas: { scale: 2, useCORS: true },
      jsPDF: { unit: 'in', format: 'a4', orientation: 'portrait' },
      pagebreak: {
        mode: ['avoid-all', 'css', 'legacy']
      }
    };

    await html2pdf().from(element).set(opt).save();

    // Hide the CV content again after PDF is saved
    element.classList.add('hidden');
  }


}
