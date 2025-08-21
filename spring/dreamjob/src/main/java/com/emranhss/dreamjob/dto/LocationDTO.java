package com.emranhss.dreamjob.dto;

import com.emranhss.dreamjob.entity.Category;
import com.emranhss.dreamjob.entity.Location;

public class LocationDTO {

    private Long id;
    private String name;

    public LocationDTO(Location location) {
        this.id = location.getId();
        this.name = location.getName();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
