package com.emranhss.dreamjob.service;


import com.emranhss.dreamjob.entity.Apply;
import com.emranhss.dreamjob.repository.ApplyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ApplyService {

    @Autowired
    ApplyRepository applyRepository;

    public Apply createApplication(Apply apply) {
        return applyRepository.save(apply);
    }

    // Get all applications
    public List<Apply> getAllApplications() {
        return applyRepository.findAll();
    }

    // Get application by ID
    public Optional<Apply> getApplicationById(Long id) {
        return applyRepository.findById(id);
    }

    // Update an application
    public Apply updateApplication(Long id, Apply updatedApply) {
        return applyRepository.findById(id)
                .map(existingApply -> {
                    existingApply.setJob(updatedApply.getJob());
                    existingApply.setJobSeeker(updatedApply.getJobSeeker());
                    existingApply.setEmployer(updatedApply.getEmployer());
                    return applyRepository.save(existingApply);
                })
                .orElseThrow(() -> new RuntimeException("Application not found with ID: " + id));
    }

    // Delete an application
    public void deleteApplication(Long id) {
        applyRepository.deleteById(id);
    }
}
