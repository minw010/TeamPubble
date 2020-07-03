package com.pubble.conpub.repository;

import com.pubble.conpub.domain.Faq;
import org.springframework.stereotype.Repository;

import javax.persistence.*;
import java.util.List;

@Repository
public class FaqRepository {

    @PersistenceContext
    private EntityManager em;

    @PersistenceUnit
    private EntityManagerFactory emf;

    public void save(Faq faq){
        em.persist(faq);
    }

    public List<Faq> findFaq(){
        return em.createQuery("select f from Faq f",Faq.class)
                .getResultList();
    }

}
