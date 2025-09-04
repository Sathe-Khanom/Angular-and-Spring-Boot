import { Component, ElementRef, Input, ViewChild } from '@angular/core';
import html2canvas from 'html2canvas';
import jsPDF from 'jspdf';
import { JobSeeker } from '../../model/jobseeker.model';

@Component({
  selector: 'app-cv-download',
  standalone: false,
  templateUrl: './cv-download.component.html',
  styleUrl: './cv-download.component.css'
})
export class CvDownloadComponent {

 @Input() jobSeeker!: JobSeeker;

  generatePDF() {
    const DATA: any = document.getElementById('cv-content');

    // Temporarily show hidden div outside viewport
    DATA.style.position = 'absolute';
    DATA.style.left = '-9999px';
    DATA.style.display = 'block';

    html2canvas(DATA, { scale: 2 }).then(canvas => {
      const imgData = canvas.toDataURL('image/png');

      const pdf = new jsPDF('p', 'mm', 'a4');
      const pdfWidth = pdf.internal.pageSize.getWidth();
      const pdfHeight = (canvas.height * pdfWidth) / canvas.width;

      pdf.addImage(imgData, 'PNG', 0, 0, pdfWidth, pdfHeight);
      pdf.save(`${this.jobSeeker.name}_CV.pdf`);

      // Hide the div again
      DATA.style.display = 'none';
      DATA.style.position = '';
      DATA.style.left = '';
    }).catch(err => {
      console.error('PDF generation error:', err);
    });
  }

}
