package com.emranhss.dreamjob.restcontroller;

import com.emranhss.dreamjob.entity.Apply;
import com.emranhss.dreamjob.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/applications/")
public class ApplyRestController {

 @Autowired
 private ApplyService applyService;

    // ✅ Create a new application
    @PostMapping
    public ResponseEntity<Apply> createApplication(@RequestBody Apply apply) {
        Apply createdApply = applyService.createApplication(apply);
        return ResponseEntity.ok(createdApply);
    }

    // ✅ Get all applications
    @GetMapping
    public ResponseEntity<List<Apply>> getAllApplications() {
        List<Apply> applications = applyService.getAllApplications();
        return ResponseEntity.ok(applications);
    }

    // ✅ Get application by ID
    @GetMapping("{id}")
    public ResponseEntity<Apply> getApplicationById(@PathVariable Long id) {
        Optional<Apply> apply = applyService.getApplicationById(id);
        return apply.map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // ✅ Update an application
    @PutMapping("{id}")
    public ResponseEntity<Apply> updateApplication(@PathVariable Long id, @RequestBody Apply updatedApply) {
        try {
            Apply updated = applyService.updateApplication(id, updatedApply);
            return ResponseEntity.ok(updated);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }

    // ✅ Delete an application
    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteApplication(@PathVariable Long id) {
        applyService.deleteApplication(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("test")
    public String test() {
        return "Apply API is working!";
    }

}
