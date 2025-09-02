package com.emranhss.dreamjob.service;

import com.emranhss.dreamjob.entity.*;
import com.emranhss.dreamjob.repository.JobSeekerRepository;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.properties.HorizontalAlignment;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.properties.HorizontalAlignment;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.UnitValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;

@Service
public class CVService {

    @Autowired
    private JobSeekerRepository jobSeekerRepository;

    public byte[] generateCV(Long jobSeekerId) throws Exception {
        JobSeeker js = jobSeekerRepository.findWithAllDetailsById(jobSeekerId)
                .orElseThrow(() -> new RuntimeException("JobSeeker not found"));

        ByteArrayOutputStream out = new ByteArrayOutputStream();
        PdfWriter writer = new PdfWriter(out);
        PdfDocument pdfDoc = new PdfDocument(writer);
        Document document = new Document(pdfDoc);

        // 🔹 Profile Photo
        if (js.getPhoto() != null && !js.getPhoto().isEmpty()) {
            try {
                String imagePath = "uploads/jobseekers/" + js.getPhoto();
                Image profilePic = new Image(ImageDataFactory.create(imagePath));
                profilePic.setWidth(100);
                profilePic.setHeight(100);
                profilePic.setAutoScale(true);
                profilePic.setMarginBottom(10);
                profilePic.setHorizontalAlignment(HorizontalAlignment.CENTER);
                document.add(profilePic);
            } catch (Exception e) {
                System.out.println("Image not found: " + js.getPhoto());
            }
        }

        // 🔹 Personal Info
        document.add(new Paragraph(js.getName())
                .setBold().setFontSize(20).setTextAlignment(TextAlignment.CENTER));
        document.add(new Paragraph(js.getEmail() + " | " + js.getPhone() + " | " + js.getGender())
                .setFontSize(10).setTextAlignment(TextAlignment.CENTER).setFontColor(ColorConstants.GRAY));
        document.add(new Paragraph("Address: " + js.getAddress())
                .setFontSize(10).setTextAlignment(TextAlignment.CENTER).setFontColor(ColorConstants.GRAY));
        document.add(new Paragraph("Date of Birth: " + js.getDateOfBirth())
                .setFontSize(10).setTextAlignment(TextAlignment.CENTER).setFontColor(ColorConstants.GRAY));
        document.add(new Paragraph("\n"));

        // 🔹 Education
        if (js.getEducations() != null && !js.getEducations().isEmpty()) {
            document.add(new Paragraph("Education").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            Table eduTable = new Table(UnitValue.createPercentArray(new float[]{2, 3, 2, 2, 2})).useAllAvailableWidth();
            String[] headers = {"Level", "Institute", "Board", "Result", "Year"};
            for (String h : headers) eduTable.addHeaderCell(new Cell().add(new Paragraph(h)).setBackgroundColor(ColorConstants.LIGHT_GRAY));
            for (Education edu : js.getEducations()) {
                eduTable.addCell(edu.getLevel());
                eduTable.addCell(edu.getInstitute());
                eduTable.addCell(edu.getBoard());
                eduTable.addCell(edu.getResult());
                eduTable.addCell(edu.getYear());
            }
            document.add(eduTable);
            document.add(new Paragraph("\n"));
        }

        // 🔹 Experience
        if (js.getExperiences() != null && !js.getExperiences().isEmpty()) {
            document.add(new Paragraph("Experience").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            Table expTable = new Table(UnitValue.createPercentArray(new float[]{2, 2, 2, 2, 3})).useAllAvailableWidth();
            String[] headers = {"Position", "Company", "From", "To", "Description"};
            for (String h : headers) expTable.addHeaderCell(new Cell().add(new Paragraph(h)).setBackgroundColor(ColorConstants.LIGHT_GRAY));
            for (Experience exp : js.getExperiences()) {
                expTable.addCell(exp.getPosition());
                expTable.addCell(exp.getCompany());
                expTable.addCell(exp.getFromDate() != null ? exp.getFromDate().toString() : "");
                expTable.addCell(exp.getToDate() != null ? exp.getToDate().toString() : "Present");
                expTable.addCell(exp.getDescription());
            }
            document.add(expTable);
            document.add(new Paragraph("\n"));
        }

        // 🔹 Training
        if (js.getTrainings() != null && !js.getTrainings().isEmpty()) {
            document.add(new Paragraph("Training").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            for (Training t : js.getTrainings()) {
                document.add(new Paragraph(t.getTitle() + " | " + t.getInstitute() + " | " + t.getDuration()));
                document.add(new Paragraph(t.getDescription()));
                document.add(new Paragraph("\n"));
            }
        }

        // 🔹 Skills
        if (js.getSkills() != null && !js.getSkills().isEmpty()) {
            document.add(new Paragraph("Skills").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            for (Skill s : js.getSkills()) document.add(new Paragraph(s.getName() + " (" + s.getLevel() + ")"));
            document.add(new Paragraph("\n"));
        }

        // 🔹 Languages
        if (js.getLanguages() != null && !js.getLanguages().isEmpty()) {
            document.add(new Paragraph("Languages").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            for (Language l : js.getLanguages()) document.add(new Paragraph(l.getName() + " (" + l.getProficiency() + ")"));
            document.add(new Paragraph("\n"));
        }

        // 🔹 Extracurricular
        if (js.getExtracurriculars() != null && !js.getExtracurriculars().isEmpty()) {
            document.add(new Paragraph("Extracurricular Activities").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            for (Extracurricular e : js.getExtracurriculars()) {
                document.add(new Paragraph(e.getTitle() + " | " + e.getRole()));
                document.add(new Paragraph(e.getDescription()));
                document.add(new Paragraph("\n"));
            }
        }

        // 🔹 Hobbies
        if (js.getHobbies() != null && !js.getHobbies().isEmpty()) {
            document.add(new Paragraph("Hobbies").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            StringBuilder hobbiesList = new StringBuilder();
            for (Hobby h : js.getHobbies()) hobbiesList.append(h.getName()).append(", ");
            if (hobbiesList.length() > 2) hobbiesList.setLength(hobbiesList.length() - 2);
            document.add(new Paragraph(hobbiesList.toString()));
            document.add(new Paragraph("\n"));
        }

        // 🔹 References
        if (js.getReferences() != null && !js.getReferences().isEmpty()) {
            document.add(new Paragraph("References").setBold().setFontSize(14).setFontColor(ColorConstants.BLUE));
            for (Refference r : js.getReferences())
                document.add(new Paragraph(r.getName() + " | " + r.getRelation() + " | " + r.getContact()));
            document.add(new Paragraph("\n"));
        }

        // 🔹 Footer
        document.add(new Paragraph("Generated by DreamJob Portal")
                .setFontSize(8).setTextAlignment(TextAlignment.CENTER).setFontColor(ColorConstants.GRAY));

        document.close();
        return out.toByteArray();
    }
}
