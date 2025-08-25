package com.emranhss.dreamjob.service;

import com.emranhss.dreamjob.entity.ContactMessage;
import com.emranhss.dreamjob.repository.ContactMessageRepository;
import org.springframework.stereotype.Service;

@Service
public class ContactMessageService {
    private final ContactMessageRepository repo;
    public ContactMessageService(ContactMessageRepository repo) {
        this.repo = repo;
    }

    public ContactMessage saveMessage(ContactMessage msg) {
        return repo.save(msg);
    }


}
