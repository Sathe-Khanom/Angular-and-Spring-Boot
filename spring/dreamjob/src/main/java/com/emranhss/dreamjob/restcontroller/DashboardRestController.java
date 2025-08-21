package com.emranhss.dreamjob.restcontroller;

import com.emranhss.dreamjob.repository.EmployerRepository;
import com.emranhss.dreamjob.repository.JobRepository;
import com.emranhss.dreamjob.repository.JobSeekerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/admin/")
public class DashboardRestController {

 @Autowired
 private JobRepository jobRepository;

 @Autowired
    private JobSeekerRepository jobSeekerRepository;

 @Autowired
    private EmployerRepository employerRepository;

    @GetMapping("counts")
    public Map<String, Long> getCounts() {
        Map<String, Long> counts = new HashMap<>();
        counts.put("jobs", jobRepository.count());
        counts.put("seekers", jobSeekerRepository.count());
        counts.put("employers", employerRepository.count());

        return counts;
    }
}
