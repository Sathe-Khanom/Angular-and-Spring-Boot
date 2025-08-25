package com.emranhss.dreamjob.restcontroller;

import com.emranhss.dreamjob.entity.ContactMessage;
import com.emranhss.dreamjob.service.ContactMessageService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/contact/")
public class ContactMessageRestController {

    private final ContactMessageService contactMessageService;


    public ContactMessageRestController(ContactMessageService contactMessageService) {
        this.contactMessageService = contactMessageService;
    }

    @PostMapping("")
    public ContactMessage receiveMessage(@RequestBody ContactMessage msg) {
        return contactMessageService.saveMessage(msg);
    }
}
