package com.pubble.conpub.service;

import com.pubble.conpub.domain.Faq;
import com.pubble.conpub.repository.FaqRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FaqService {

    @Autowired
    private FaqRepository faqRepository;

    public List<Faq> findFaq(){
        return faqRepository.findFaq();
    }

}
