package com.emranhss.dreamjob.repository;

import com.emranhss.dreamjob.entity.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface JobRepository extends JpaRepository <Job, Long> {
    List<Job> findByEmployerId(long employerId);

    @Query("SELECT j FROM Job j WHERE " +
            "(:categoryId IS NULL OR j.category.id = :categoryId) AND " +
            "(:locationId IS NULL OR j.location.id = :locationId)")
    List<Job> filterJobs(
            @Param("categoryId") Long categoryId,
            @Param("locationId") Long locationId
    );

}
