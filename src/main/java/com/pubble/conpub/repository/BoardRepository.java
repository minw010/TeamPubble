package com.pubble.conpub.repository;

import com.pubble.conpub.domain.Board;
import org.springframework.stereotype.Repository;

import javax.persistence.*;
import java.util.List;

@Repository
public class BoardRepository {

    @PersistenceContext
    private EntityManager em;

    @PersistenceUnit
    private EntityManagerFactory emf;

    public void save(Board board){
        em.persist(board);
    }

    public List<Board> findNotice() {
        return em.createQuery("select b from Board b where b.boardSortationNo=:no",Board.class)
                .setParameter("no",1).getResultList();
    }

    public List<Board> findEstimate(){
        return em.createQuery("select b from Board b where b.boardSortationNo=:no",Board.class)
                .setParameter("no",3).getResultList();
    }

    public List<Board> findQna(){
        return em.createQuery("select b from Board b where b.boardSortationNo=:no",Board.class)
                .setParameter("no",2).getResultList();
    }
}
