package com.emranhss.dreamjob.service;

import com.emranhss.dreamjob.dto.ExperienceDTO;
import com.emranhss.dreamjob.dto.SummeryDTO;
import com.emranhss.dreamjob.entity.Experience;
import com.emranhss.dreamjob.entity.JobSeeker;

import com.emranhss.dreamjob.entity.Summery;
import com.emranhss.dreamjob.repository.JobSeekerRepository;
import com.emranhss.dreamjob.repository.SummeryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SummeryService {

    @Autowired
    private SummeryRepository summeryRepository;

    @Autowired
    private JobSeekerRepository jobSeekerRepository;

    public List<SummeryDTO> getByJobSeekerId(Long jobSeekerId) {
        List<Summery> summery = summeryRepository.findByJobSeekerId(jobSeekerId);
        return summery.stream()
                .map(SummeryDTO :: new)
                .collect(Collectors.toList());
    }

    public Summery saveSummery(Summery summery, String email) {
        JobSeeker jobSeeker = jobSeekerRepository.findByUserEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("JobSeeker not found"));

        summery.setJobSeeker(jobSeeker);

        return summeryRepository.save(summery);
    }

    public void delete(Long id) {
        summeryRepository.deleteById(id);
    }
}
