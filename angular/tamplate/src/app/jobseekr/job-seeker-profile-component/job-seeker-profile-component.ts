import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { JobseekerService } from '../../service/jobseeker.service';
import { Education } from '../../model/education.model';
import { Experience } from '../../model/experience.model';
import { Extracurricular } from '../../model/extracurricular.model';
import { EducationService } from '../../service/education.service';
import { ExperienceService } from '../../service/experience.service';
import { ExtracurricularService } from '../../service/extracurricular.service';
import { Skill } from '../../model/skill.model';
import { Training } from '../../model/training.model';
import { Refference } from '../../model/refference.model';
import { Language } from '../../model/language.model';
import { Hobby } from '../../model/hobby.model';
import { SkillService } from '../../service/skill.service';
import { TrainingService } from '../../service/training.service';
import { RefferenceService } from '../../service/refference.service';
import { LanguageService } from '../../service/language.service';
import { HobbyService } from '../../service/hobby.service';
import { AuthService } from '../../service/auth-service';
import jsPDF from 'jspdf';
import { JobSeeker } from '../../model/jobseeker.model';

@Component({
  selector: 'app-job-seeker-profile-component',
  standalone: false,
  templateUrl: './job-seeker-profile-component.html',
  styleUrl: './job-seeker-profile-component.css'
})
export class JobSeekerProfileComponent implements OnInit {
 jobSeekerProfile!: JobSeeker;
  jobSeeker: any;

  educations: Education[] = [];

   newEducation = {
    level: '',
    institute: '',
    result: '',
    year: ''
  };

  experiences: Experience[] = [];

  newExperience: Experience = {
     company: '',
     position: '',
     fromDate: ''
       };

  extracurriculars: Extracurricular[] = [];
  newExtracurricular: Extracurricular = { 
    title: '',
    role: '',
    description: ''
     };

       skills: Skill[] = [];

  newSkill: Skill = {
    name: '',
    level: ''
  };

  trainings: Training[] = [];

  newTraining: Training = {
    title: '',
    institute: '',
    duration: '',
    description: ''
  }; 

    references: Refference[] = [];

  newReference: Refference = {
    name: '',
    contact: '',
    relation: ''
  };

    languages: Language[] = [];

  newLanguage: Language = {
    name: '',
    proficiency: ''
  };

   hobbies: Hobby[] = [];

  newHobby: Hobby = {
    name: ''
  }; 


 

  constructor(
    private jobSeekerService: JobseekerService,
    private cdr: ChangeDetectorRef,
    private educationService: EducationService,
    private expService: ExperienceService,
    private extracurricularService: ExtracurricularService,
    private skillService: SkillService,
    private trainingService: TrainingService,
    private refferenceService: RefferenceService,
    private languageService: LanguageService,
    private hobbyService: HobbyService,
    private authService: AuthService,
  ) { }

   ngOnInit(): void {
    this.getProfile();
    this.loadEducations();
    this.loadExperiences();
    this.loadExtracurriculars();
    this.loadSkills();
    this.loadTrainings();
    this.loadReferences();
    this.loadLanguages();
    this.loadHobbies();
//  this.jobSeekerService.getJobSeekerProfile().subscribe({
//   next: (data: any) => {   // temporarily use 'any'
//     this.jobSeekerProfile = data;
//   },
//   error: (err) => console.error(err)
// });
    //  this.loadAllData();
 
  }

  

   loadHobbies(): void {
    this.hobbyService.getAllHobbies().subscribe({
      next: (data) => {
        this.hobbies = data;
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to load hobbies', err)
    });
  }

  addHobby(): void {
    this.hobbyService.addHobby(this.newHobby).subscribe({
      next: () => {
        this.newHobby = { name: '' };
        this.loadHobbies();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to add hobby', err)
    });
  }

  deleteHobby(id: number | undefined): void {
    if (!id) return;
    if (!confirm('Are you sure you want to delete this hobby?')) return;

    this.hobbyService.deleteHobby(id).subscribe({
      next: () => {
        this.loadHobbies();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to delete hobby:', err)
    });
  }

  loadLanguages(): void {
    this.languageService.getAllLanguages().subscribe({
      next: (data) => {
        this.languages = data;
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to load languages', err)
    });
  }

  addLanguage(): void {
    this.languageService.addLanguage(this.newLanguage).subscribe({
      next: () => {
        this.newLanguage = { name: '', proficiency: '' };
        this.loadLanguages();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to add language', err)
    });
  }

  deleteLanguage(id: number | undefined): void {
    if (!id) return;
    if (!confirm('Are you sure you want to delete this language?')) return;

    this.languageService.deleteLanguage(id).subscribe({
      next: () => {
        this.loadLanguages();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to delete language:', err)
    });
  }


  loadReferences(): void {
    this.refferenceService.getAllReferences().subscribe({
      next: (data) => {
        this.references = data;
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to load references', err)
    });
  }

  addReference(): void {
    this.refferenceService.addReference(this.newReference).subscribe({
      next: () => {
        this.newReference = { name: '', contact: '', relation: '' };
        this.loadReferences();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to add reference', err)
    });
  }

  deleteReference(id: number | undefined): void {
    if (!id) return;
    if (!confirm('Are you sure you want to delete this reference?')) return;

    this.refferenceService.deleteReference(id).subscribe({
      next: () => {
        this.loadReferences();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to delete reference:', err)
    });
  }


  loadTrainings(): void {
    this.trainingService.getAllTrainings().subscribe({
      next: (data) => {
        this.trainings = data;
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to load trainings', err)
    });
  }

  addTraining(): void {
    this.trainingService.addTraining(this.newTraining).subscribe({
      next: () => {
        this.newTraining = { title: '', institute: '', duration: '', description: '' };
        this.loadTrainings();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to add training', err)
    });
  }

  deleteTraining(id: number | undefined): void {
    if (!id) return;
    if (!confirm('Are you sure you want to delete this training?')) return;

    this.trainingService.deleteTraining(id).subscribe({
      next: () => {
        this.loadTrainings();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to delete training:', err)
    });
  }


  loadSkills(): void {
    this.skillService.getAllSkills().subscribe({
      next: (data) => {
        this.skills = data;
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to load skills', err)
    });
  }

  // Add a new skill
  addSkill(): void {
    this.skillService.addSkill(this.newSkill).subscribe({
      next: () => {
        this.newSkill = { name: '', level: '' }; // Reset form
        this.loadSkills();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to add skill', err)
    });
  }

  // Delete a skill by ID
  deleteSkill(id: number | undefined): void {
    if (!id) return;
    if (!confirm('Are you sure you want to delete this skill?')) return;

    this.skillService.deleteSkill(id).subscribe({
      next: () => {
        this.loadSkills();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to delete skill:', err)
    });
  }


  // ✅ Load extracurriculars
  loadExtracurriculars(): void {
    this.extracurricularService.getAllExtracurriculars().subscribe({
      next: (data) => {
        this.extracurriculars = data;
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to load extracurriculars', err)
    });
  }


  // ✅ Add extracurricular
  addExtracurricular(): void {
    this.extracurricularService.addExtracurricular(this.newExtracurricular).subscribe({
      next: () => {
        this.newExtracurricular = { title: '', role: '', description: '' };
        this.loadExtracurriculars();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to add extracurricular', err)
    });
  }

  // ✅ Delete extracurricular
  deleteExtracurricular(id: number | undefined): void {
    if (!id) return;
    if (!confirm('Are you sure you want to delete this extracurricular?')) return;

    this.extracurricularService.deleteExtracurricular(id).subscribe({
      next: () => {
        this.loadExtracurriculars();
        this.cdr.markForCheck();
      },
      error: (err) => console.error('Failed to delete extracurricular:', err)
    });
  }

  loadEducations(): void {
    this.educationService.getEducations().subscribe({
      next: (data) => {
        this.educations = data;

        this.cdr.markForCheck();

      },
      error: (err) => {
        console.error('Failed to load educations', err);
      }
    });
  }

  getProfile() {

    this.jobSeekerService.getProfile().subscribe({
      next: (data) => {
        this.jobSeeker = data;
        console.log(data);
        this.cdr.markForCheck();

      },
      error: (err) => {
        console.error('Failed to load profile', err);
      }
    });
  }



  addEducation(): void {
    this.educationService.addEducation(this.newEducation).subscribe({
      next: async (addedEdu: any) => {
        if (!this.jobSeeker.educations) {
          this.jobSeeker.educations = [];
        }
        this.jobSeeker.educations.push(addedEdu);
        this.newEducation = { level: '', institute: '', result: '', year: '' };


      },
      error: (err) => {
        console.error('Failed to add education', err);
      }
    });
  }


  deleteEducation(id: number): void {
    if (!confirm('Are you sure you want to delete this education?')) {
      return;
    }

    this.educationService.deleteEducation(id).subscribe({
      next: () => {
        // ✅ Remove from UI
        this.loadEducations();
        this.cdr.markForCheck();

      },
      error: (err) => {
        console.error('Failed to delete education:', err);
        alert('Failed to delete education.');
      }
    });
  }



  loadExperiences(): void {
    this.expService.getAllExperiences().subscribe(data => {
      this.experiences = data;
      this.cdr.markForCheck();
    });
  }

  addExperience(): void {
    this.expService.addExperience(this.newExperience).subscribe(() => {
      this.newExperience = { company: '', position: '', fromDate: '' };
      this.loadExperiences();
      this.cdr.markForCheck();
    });
  }

  deleteExperience(id: number | undefined): void {
    if (!id) return;
    this.expService.deleteExperience(id).subscribe(() => {
      this.loadExperiences();
      this.cdr.markForCheck();
    });
  }

   onLogout(): void {
    this.authService.logout();
  }

  //   convertImgToBase64(url: string): Promise<string> {
  //   return new Promise((resolve, reject) => {
  //     const img = new Image();
  //     img.setAttribute('crossOrigin', 'anonymous'); // avoid CORS issues
  //     img.onload = () => {
  //       const canvas = document.createElement('canvas');
  //       canvas.width = img.width;
  //       canvas.height = img.height;

  //       const ctx = canvas.getContext('2d');
  //       ctx?.drawImage(img, 0, 0);

  //       const dataURL = canvas.toDataURL('image/png');
  //       resolve(dataURL);
  //     };
  //     img.onerror = error => reject(error);
  //     img.src = url;
  //   });
  // }


  //  async generateCV() {
  //   const doc = new jsPDF('p', 'pt', 'a4');
  //   const pageWidth = doc.internal.pageSize.getWidth();
  //   const pageHeight = doc.internal.pageSize.getHeight();

  //   const leftColWidth = pageWidth * 0.33;
  //   const rightColWidth = pageWidth - leftColWidth - 40; // 40 for margin
  //   const margin = 20;
  //   let yLeft = margin;
  //   let yRight = margin;

  //   // Background for left column
  //   doc.setFillColor(48, 63, 79);  // dark blue-gray
  //   doc.rect(0, 0, leftColWidth, pageHeight, 'F');

  //   // Add profile photo circle with white border
  //   const imageUrl = `http://localhost:8085/images/jobSeeker/${this.jobSeeker.photo}`;
  //   let imgData = '';
  //   try {
  //     imgData = await this.convertImgToBase64(imageUrl);
  //   } catch (e) {
  //     console.warn('Could not load image for PDF:', e);
  //   }
  //   if (imgData) {
  //     const imgSize = 100;
  //     // White circle behind photo
  //     doc.setDrawColor(255, 255, 255);
  //     doc.setFillColor(255, 255, 255);
  //     doc.circle(leftColWidth / 2, yLeft + imgSize / 2, imgSize / 2 + 4, 'FD');
  //     // Add photo on top
  //     doc.addImage(imgData, 'PNG', (leftColWidth - imgSize) / 2, yLeft, imgSize, imgSize, undefined, 'FAST');
  //   }
  //   yLeft += 130;

  //   // Name and title in left column
  //   doc.setFontSize(18);
  //   doc.setTextColor(255, 255, 255);
  //   doc.setFont('helvetica', 'bold');
  //   doc.text(this.jobSeeker.name.toUpperCase(), margin, yLeft);
  //   yLeft += 25;
  //   doc.setFontSize(12);
  //   doc.setFont('helvetica', 'normal');
  //   doc.text(this.jobSeeker.profession || 'Your Profession', margin, yLeft);
  //   yLeft += 30;

  //   // Personal info list in left column
  //   doc.setFontSize(10);
  //   const personalInfo = [
  //     { icon: '👤', text: this.jobSeeker.gender || 'Gender' },
  //     { icon: '🎂', text: this.jobSeeker.dob || 'DOB' },
  //     { icon: '📞', text: this.jobSeeker.phone || 'Phone' },
  //     { icon: '✉️', text: this.jobSeeker.email || 'Email' },
  //     { icon: '🌍', text: this.jobSeeker.website || 'Website' },
  //     { icon: '📍', text: this.jobSeeker.address || 'Address' },
  //   ];
  //   personalInfo.forEach(info => {
  //     doc.text(`${info.icon}  ${info.text}`, margin, yLeft);
  //     yLeft += 15;
  //   });

  //   // Draw separator line on left column
  //   doc.setDrawColor(255, 255, 255);
  //   doc.line(margin, yLeft, leftColWidth - margin, yLeft);
  //   yLeft += 20;

  //   // Skills title in left column
  //   doc.setFont('helvetica', 'bold');
  //   doc.text('SKILLS', margin, yLeft);
  //   yLeft += 20;

  //   // List skills
  //   this.skills.forEach(skill => {
  //     doc.setFont('helvetica', 'bold');
  //     doc.text(`• ${skill.name}`, margin, yLeft);
  //     yLeft += 12;
  //     doc.setFont('helvetica', 'normal');
  //     doc.text(`- ${skill.level}`, margin + 12, yLeft);
  //     yLeft += 18;
  //   });

  //   // Repeat similar blocks for Honors, Certifications, Interests on left column...
  //   // Increase yLeft accordingly

  //   // --- Right column content ---
  //   yRight = margin;

  //   // Title: Objective
  //   doc.setFontSize(14);
  //   doc.setFont('helvetica', 'bold');
  //   doc.setTextColor(0, 0, 0);
  //   doc.text('OBJECTIVE', leftColWidth + margin, yRight);
  //   yRight += 20;
  //   doc.setLineWidth(0.5);
  //   doc.line(leftColWidth + margin, yRight, pageWidth - margin, yRight);
  //   yRight += 10;

  //   // Objective text
  //   doc.setFont('helvetica', 'normal');
  //   doc.setFontSize(11);
  //   const objText = this.jobSeeker.objective || "Your objective text here...";
  //   const objLines = doc.splitTextToSize(objText, rightColWidth);
  //   doc.text(objLines, leftColWidth + margin, yRight);
  //   yRight += objLines.length * 14 + 20;

  //   // Education
  //   doc.setFont('helvetica', 'bold');
  //   doc.setFontSize(14);
  //   doc.text('EDUCATION', leftColWidth + margin, yRight);
  //   yRight += 20;
  //   doc.line(leftColWidth + margin, yRight, pageWidth - margin, yRight);
  //   yRight += 10;
  //   doc.setFont('helvetica', 'normal');
  //   doc.setFontSize(11);
  //   this.educations.forEach(edu => {
  //     const eduTitle = `• ${edu.institute} (${edu.level})`;
  //     doc.text(eduTitle, leftColWidth + margin, yRight);
  //     yRight += 14;
  //     const eduDetails = ` GPA: ${edu.result || 'N/A'}  Year: ${edu.year || 'N/A'}`;
  //     doc.text(eduDetails, leftColWidth + margin + 10, yRight);
  //     yRight += 20;
  //   });

  //   // Similarly add Work Experience, Activities with bullets and indentation in right column

  //   // Finally save the doc
  //   doc.save(`${this.jobSeeker.name}_Styled_CV.pdf`);
  // }

//  async generateCV() {
//     if (!this.jobSeeker) return;

//     const doc = new jsPDF('p', 'pt', 'a4');
//     const pageW = doc.internal.pageSize.getWidth();
//     const pageH = doc.internal.pageSize.getHeight();
//     const leftW = pageW * 0.32;
//     const margin = 24;

//     // 🔹 Sidebar Gradient Background
//     const gradientCanvas = document.createElement('canvas');
//     gradientCanvas.width = 10;
//     gradientCanvas.height = 100;
//     const ctx = gradientCanvas.getContext('2d');
//     if (ctx) {
//       const g = ctx.createLinearGradient(0, 0, 0, 100);
//       g.addColorStop(0, '#2980b9'); // blue
//       g.addColorStop(1, '#8e44ad'); // purple
//       ctx.fillStyle = g;
//       ctx.fillRect(0, 0, 10, 100);
//       const gradientData = gradientCanvas.toDataURL('image/png');
//       doc.addImage(gradientData, 'PNG', 0, 0, leftW, pageH);
//     }

//     // 🔹 Profile Photo
//     if (this.jobSeeker.photo) {
//       try {
//         const imgUrl = `http://localhost:8085/images/jobSeeker/${this.jobSeeker.photo}`;
//         const img = await this.toBase64(imgUrl);
//         doc.addImage(img, 'PNG', (leftW - 100) / 2, 40, 100, 100, undefined, 'FAST');
//       } catch {}
//     }

//     // 🔹 Name
//     doc.setFont('helvetica', 'bold');
//     doc.setFontSize(20);
//     doc.setTextColor(255, 255, 255);
//     doc.text(this.jobSeeker.name?.toUpperCase() || 'NAME', margin, 170);

//     // 🔹 Profession
//     doc.setFontSize(12);
//     doc.setFont('helvetica', 'italic');
//     doc.text(this.jobSeeker.profession || 'Your Profession', margin, 190);

//     // 🔹 Contact Info
//     doc.setFont('helvetica', 'normal');
//     doc.setFontSize(10);
//     let yL = 220;
//     doc.text(`📍 ${this.jobSeeker.address || ''}`, margin, yL); yL += 14;
//     doc.text(`📞 ${this.jobSeeker.phone || ''}`, margin, yL); yL += 14;
//     doc.text(`✉️ ${this.jobSeeker.email || ''}`, margin, yL); yL += 14;

//     // 🔹 Skills with Multicolor Bars
//     yL += 20;
//     yL = this.addSidebarSection(doc, 'SKILLS', this.jobSeeker.skills, margin, yL, (s: any, yy: number) => {
//       doc.text(s.name, margin, yy);
//       const barW = 100, barH = 6;
//       const level = s.level === 'Expert' ? 100 : s.level === 'Intermediate' ? 70 : 40;
//       let color = [39, 174, 96]; // green
//       if (s.level === 'Intermediate') color = [243, 156, 18]; // orange
//       if (s.level === 'Beginner') color = [231, 76, 60]; // red
//       doc.setFillColor(255, 255, 255);
//       doc.rect(margin, yy + 4, barW, barH);
//       doc.setFillColor(color[0], color[1], color[2]);
//       doc.rect(margin, yy + 4, (barW * level) / 100, barH, 'F');
//       return yy + 18;
//     });

//     // 🔹 Languages
//     yL = this.addSidebarSection(doc, 'LANGUAGES', this.jobSeeker.languages, margin, yL, (l: any, yy: number) => {
//       doc.setFillColor(52, 152, 219);
//       doc.circle(margin + 3, yy - 3, 3, 'F');
//       doc.text(`${l.name} (${l.proficiency})`, margin + 12, yy);
//       return yy + 14;
//     });

//     // 🔹 Hobbies
//     yL = this.addSidebarSection(doc, 'HOBBIES', this.jobSeeker.hobbies, margin, yL, (h: any, yy: number) => {
//       doc.setFillColor(155, 89, 182);
//       doc.circle(margin + 3, yy - 3, 3, 'F');
//       doc.text(`${h.name}`, margin + 12, yy);
//       return yy + 14;
//     });

//     // ======================
//     // 🔹 Right Column (White)
//     // ======================
//     let xR = leftW + margin;
//     let yR = margin + 20;

//     // Education
//     yR = this.addMainSection(doc, 'EDUCATION', this.jobSeeker.educations, xR, yR, (e: any, yy: number) => {
//       this.drawBox(doc, xR, yy - 10, `${e.level} - ${e.institute}`, `GPA: ${e.result} | Year: ${e.year}`);
//       return yy + 40;
//     });

//     // Experience
//     yR = this.addMainSection(doc, 'EXPERIENCE', this.jobSeeker.experiences, xR, yR, (ex: any, yy: number) => {
//       this.drawBox(doc, xR, yy - 10, `${ex.position} @ ${ex.company}`, `${ex.fromDate} - ${ex.toDate || 'Present'}`);
//       return yy + 40;
//     });

//     // Extracurricular
//     yR = this.addMainSection(doc, 'EXTRACURRICULAR', this.jobSeeker.extracurriculars, xR, yR, (a: any, yy: number) => {
//       this.drawBox(doc, xR, yy - 10, `${a.title} – ${a.role}`, a.description || '');
//       return yy + 40;
//     });

//     // Trainings
//     yR = this.addMainSection(doc, 'TRAININGS', this.jobSeeker.trainings, xR, yR, (t: any, yy: number) => {
//       this.drawBox(doc, xR, yy - 10, `${t.title} - ${t.institute}`, `${t.duration} | ${t.description}`);
//       return yy + 40;
//     });

//     // References
//     yR = this.addMainSection(doc, 'REFERENCES', this.jobSeeker.references, xR, yR, (r: any, yy: number) => {
//       this.drawBox(doc, xR, yy - 10, r.name, `${r.relation} (${r.contact})`);
//       return yy + 40;
//     });

//     // Save
//     doc.save(`${this.jobSeeker?.name || 'jobseeker'}_CV.pdf`);
//   }

//   private addSidebarSection(doc: jsPDF, title: string, items: any[], x: number, y: number, render: (item: any, y: number) => number) {
//     if (!items || items.length === 0) return y;
//     doc.setFont('helvetica', 'bold');
//     doc.setFontSize(12);
//     doc.setTextColor(255, 255, 255);
//     doc.text(title, x, y);
//     y += 14;
//     doc.setFont('helvetica', 'normal');
//     doc.setFontSize(10);
//     items.forEach((it: any) => { y = render(it, y); });
//     return y + 10;
//   }

//   private addMainSection(doc: jsPDF, title: string, items: any[], x: number, y: number, render: (item: any, y: number) => number) {
//     if (!items || items.length === 0) return y;
//     doc.setFont('helvetica', 'bold');
//     doc.setFontSize(13);
//     doc.setTextColor(41, 128, 185);
//     doc.text(title, x, y);
//     y += 8;
//     doc.setDrawColor(41, 128, 185);
//     doc.setLineWidth(0.7);
//     doc.line(x, y, doc.internal.pageSize.getWidth() - 24, y);
//     y += 14;
//     doc.setFont('helvetica', 'normal');
//     doc.setFontSize(11);
//     doc.setTextColor(0, 0, 0);
//     items.forEach((it: any) => { y = render(it, y); });
//     return y + 10;
//   }

//   private drawBox(doc: jsPDF, x: number, y: number, title: string, subtitle: string) {
//     doc.setFillColor(236, 240, 241); // light grey background
//     doc.rect(x, y, 350, 35, 'F');
//     doc.setFontSize(11);
//     doc.setTextColor(44, 62, 80);
//     doc.text(title, x + 10, y + 15);
//     doc.setFontSize(9);
//     doc.setTextColor(127, 140, 141);
//     doc.text(subtitle, x + 10, y + 28);
//   }

//   private toBase64(url: string): Promise<string> {
//     return new Promise((resolve, reject) => {
//       const img = new Image();
//       img.crossOrigin = 'anonymous';
//       img.onload = () => {
//         const c = document.createElement('canvas');
//         c.width = img.width; c.height = img.height;
//         const ctx = c.getContext('2d');
//         ctx?.drawImage(img, 0, 0);
//         resolve(c.toDataURL('image/png'));
//       };
//       img.onerror = reject;
//       img.src = url;
//     });
//   }

// async loadAllData() {
//   this.jobSeeker = await this.jobSeekerService.getProfile().toPromise();
//   this.jobSeeker.educations = await this.educationService.getEducations().toPromise();
//   this.jobSeeker.experiences = await this.expService.getAllExperiences().toPromise();
//   this.jobSeeker.skills = await this.skillService.getAllSkills().toPromise();
//   this.jobSeeker.languages = await this.languageService.getAllLanguages().toPromise();
//   this.jobSeeker.hobbies = await this.hobbyService.getAllHobbies().toPromise();
//   this.jobSeeker.trainings = await this.trainingService.getAllTrainings().toPromise();
//   this.jobSeeker.extracurriculars = await this.extracurricularService.getAllExtracurriculars().toPromise();
//   this.jobSeeker.references = await this.refferenceService.getAllReferences().toPromise();
// }
//  async generateCV() {
//     const doc = new jsPDF('p', 'pt', 'a4');
//     const pageWidth = doc.internal.pageSize.getWidth();
//     const pageHeight = doc.internal.pageSize.getHeight();
//     const margin = 20;
//     const leftColWidth = pageWidth * 0.33;
//     const rightColWidth = pageWidth - leftColWidth - margin*2;

//     let yLeft = margin;
//     let yRight = margin;

//     // ---------------- Left Column ----------------
//     // Background color
//     doc.setFillColor(48, 63, 79);  // Dark blue-gray
//     doc.rect(0, 0, leftColWidth, pageHeight, 'F');

//     // Profile photo
//     if(this.jobSeeker?.photo) {
//       try {
//         const imageUrl = `http://localhost:8085/images/jobSeeker/${this.jobSeeker.photo}`;
//         const imgData = await this.convertImgToBase64(imageUrl);
//         if(imgData){
//           const imgSize = 100;
//           doc.setDrawColor(255,255,255);
//           doc.setFillColor(255,255,255);
//           doc.circle(leftColWidth/2, yLeft + imgSize/2, imgSize/2 + 4, 'FD');
//           doc.addImage(imgData, 'PNG', (leftColWidth - imgSize)/2, yLeft, imgSize, imgSize, undefined, 'FAST');
//         }
//       } catch(err) { console.warn(err); }
//     }
//     yLeft += 130;

//     // Name & Profession
//     doc.setFontSize(18);
//     doc.setTextColor(255,255,255);
//     doc.setFont('helvetica','bold');
//     doc.text(this.jobSeeker?.name?.toUpperCase() || 'Your Name', margin, yLeft);
//     yLeft += 25;
//     doc.setFontSize(12);
//     doc.setFont('helvetica','normal');
//     doc.text(this.jobSeeker?.profession || 'Your Profession', margin, yLeft);
//     yLeft += 30;

//     // Personal info
//     const personalInfo = [
//       { label: 'Address', value: this.jobSeeker?.address },
//       { label: 'Phone', value: this.jobSeeker?.phone },
//       { label: 'Email', value: this.jobSeeker?.email },
//       { label: 'Website', value: this.jobSeeker?.website }
//     ];
//     doc.setFontSize(10);
//     personalInfo.forEach(info => {
//       if(info.value){
//         doc.text(`${info.label}: ${info.value}`, margin, yLeft);
//         yLeft += 14;
//       }
//     });

//     yLeft += 10;
//     doc.setDrawColor(255,255,255);
//     doc.setLineWidth(1);
//     doc.line(margin, yLeft, leftColWidth - margin, yLeft);
//     yLeft += 20;

//     // Skills
//     if(this.jobSeeker?.skills?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(12);
//       doc.text('SKILLS', margin, yLeft);
//       yLeft += 18;
//       doc.setFont('helvetica','normal');
//       this.jobSeeker.skills.forEach((skill:any)=>{
//         doc.text(`• ${skill.name} (${skill.level})`, margin, yLeft);
//         yLeft += 14;
//       });
//       yLeft += 10;
//     }

//     // Languages
//     if(this.jobSeeker?.languages?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(12);
//       doc.text('LANGUAGES', margin, yLeft);
//       yLeft += 18;
//       doc.setFont('helvetica','normal');
//       this.jobSeeker.languages.forEach((lang:any)=>{
//         doc.text(`• ${lang.name} (${lang.proficiency})`, margin, yLeft);
//         yLeft += 14;
//       });
//       yLeft += 10;
//     }

//     // Hobbies
//     if(this.jobSeeker?.hobbies?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(12);
//       doc.text('HOBBIES', margin, yLeft);
//       yLeft += 18;
//       doc.setFont('helvetica','normal');
//       this.jobSeeker.hobbies.forEach((hobby:any)=>{
//         doc.text(`• ${hobby.name}`, margin, yLeft);
//         yLeft += 14;
//       });
//       yLeft += 10;
//     }

//     // ---------------- Right Column ----------------
//     yRight = margin;
//     const rightX = leftColWidth + margin;

//     // Objective
//     if(this.jobSeeker?.objective){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(14);
//       doc.setTextColor(0,0,0);
//       doc.text('OBJECTIVE', rightX, yRight);
//       yRight += 20;
//       doc.setLineWidth(0.5);
//       doc.line(rightX, yRight, pageWidth - margin, yRight);
//       yRight += 10;

//       doc.setFont('helvetica','normal');
//       doc.setFontSize(11);
//       const objLines = doc.splitTextToSize(this.jobSeeker.objective, rightColWidth);
//       doc.text(objLines, rightX, yRight);
//       yRight += objLines.length*14 + 10;
//     }

//     // Education
//     if(this.jobSeeker?.educations?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(14);
//       doc.text('EDUCATION', rightX, yRight);
//       yRight += 18;
//       doc.line(rightX, yRight, pageWidth - margin, yRight);
//       yRight += 10;
//       doc.setFont('helvetica','normal');
//       doc.setFontSize(11);
//       this.jobSeeker.educations.forEach((edu:any)=>{
//         doc.text(`• ${edu.level} - ${edu.institute}`, rightX, yRight);
//         yRight += 14;
//         doc.text(`GPA: ${edu.result || 'N/A'} | Year: ${edu.year || 'N/A'}`, rightX+10, yRight);
//         yRight += 20;
//       });
//     }

//     // Experience
//     if(this.jobSeeker?.experiences?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(14);
//       doc.text('EXPERIENCE', rightX, yRight);
//       yRight += 18;
//       doc.line(rightX, yRight, pageWidth - margin, yRight);
//       yRight += 10;
//       doc.setFont('helvetica','normal');
//       doc.setFontSize(11);
//       this.jobSeeker.experiences.forEach((exp:any)=>{
//         doc.text(`• ${exp.position} @ ${exp.company}`, rightX, yRight);
//         yRight += 14;
//         doc.text(`${exp.fromDate} - ${exp.toDate || 'Present'}`, rightX+10, yRight);
//         yRight += 20;
//       });
//     }

//     // Extracurriculars
//     if(this.jobSeeker?.extracurriculars?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(14);
//       doc.text('EXTRACURRICULAR', rightX, yRight);
//       yRight += 18;
//       doc.line(rightX, yRight, pageWidth - margin, yRight);
//       yRight += 10;
//       doc.setFont('helvetica','normal');
//       doc.setFontSize(11);
//       this.jobSeeker.extracurriculars.forEach((act:any)=>{
//         doc.text(`• ${act.title} (${act.role})`, rightX, yRight);
//         yRight += 14;
//         doc.text(`${act.description}`, rightX+10, yRight);
//         yRight += 20;
//       });
//     }

//     // Trainings
//     if(this.jobSeeker?.trainings?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(14);
//       doc.text('TRAININGS', rightX, yRight);
//       yRight += 18;
//       doc.line(rightX, yRight, pageWidth - margin, yRight);
//       yRight += 10;
//       doc.setFont('helvetica','normal');
//       doc.setFontSize(11);
//       this.jobSeeker.trainings.forEach((tr:any)=>{
//         doc.text(`• ${tr.title} - ${tr.institute}`, rightX, yRight);
//         yRight += 14;
//         doc.text(`${tr.duration} | ${tr.description}`, rightX+10, yRight);
//         yRight += 20;
//       });
//     }

//     // References
//     if(this.jobSeeker?.references?.length){
//       doc.setFont('helvetica','bold');
//       doc.setFontSize(14);
//       doc.text('REFERENCES', rightX, yRight);
//       yRight += 18;
//       doc.line(rightX, yRight, pageWidth - margin, yRight);
//       yRight += 10;
//       doc.setFont('helvetica','normal');
//       doc.setFontSize(11);
//       this.jobSeeker.references.forEach((ref:any)=>{
//         doc.text(`• ${ref.name} (${ref.relation}) - ${ref.contact}`, rightX, yRight);
//         yRight += 16;
//       });
//     }

//     // Save PDF
//     doc.save(`${this.jobSeeker?.name || 'CV'}_Styled_CV.pdf`);
//   }

//   // Convert image URL to Base64 for jsPDF
//   async convertImgToBase64(url: string): Promise<string> {
//     const res = await fetch(url);
//     const blob = await res.blob();
//     return new Promise((resolve, reject) => {
//       const reader = new FileReader();
//       reader.onloadend = () => resolve(reader.result as string);
//       reader.onerror = reject;
//       reader.readAsDataURL(blob);
//     });
//   }



}
