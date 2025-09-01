package com.emranhss.dreamjob.repository;


import com.emranhss.dreamjob.entity.Apply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ApplyRepository extends JpaRepository<Apply, Long> {


    List<Apply> findByJobSeeker_Id(Long jobSeekerId);

}
