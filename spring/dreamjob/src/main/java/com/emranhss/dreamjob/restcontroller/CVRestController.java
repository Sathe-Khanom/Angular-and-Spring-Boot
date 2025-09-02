package com.emranhss.dreamjob.restcontroller;


import com.emranhss.dreamjob.service.CVService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/cv")
public class CVRestController {

    @Autowired
    private CVService cvService;

    // ✅ Download CV as PDF
    @GetMapping("/download/{jobSeekerId}")
    public ResponseEntity<byte[]> downloadCV(@PathVariable Long jobSeekerId) {
        try {
            byte[] pdfBytes = cvService.generateCV(jobSeekerId);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentDispositionFormData("attachment", "CV_" + jobSeekerId + ".pdf");

            return ResponseEntity.ok()
                    .headers(headers)
                    .body(pdfBytes);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).build();
        }
    }

    // ✅ View CV in browser
    @GetMapping("/view/{jobSeekerId}")
    public ResponseEntity<byte[]> viewCV(@PathVariable Long jobSeekerId) {
        try {
            byte[] pdfBytes = cvService.generateCV(jobSeekerId);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentDispositionFormData("inline", "CV_" + jobSeekerId + ".pdf");

            return ResponseEntity.ok()
                    .headers(headers)
                    .body(pdfBytes);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).build();
        }
    }
}
