package com.emranhss.dreamjob.service;

import com.emranhss.dreamjob.entity.Location;
import com.emranhss.dreamjob.repository.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LocationService {

    @Autowired
    private LocationRepository locationRepository;

    public List<Location> getAllLocations() {
        return locationRepository.findAll();
    }

}
