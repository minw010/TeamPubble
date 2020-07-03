package com.pubble.conpub.service;

import com.pubble.conpub.domain.Board;
import com.pubble.conpub.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    @Autowired
    private BoardRepository boardRepository;

    public List<Board> findNotice(){ return boardRepository.findNotice(); }

    public List<Board> findEstimate(){ return  boardRepository.findEstimate();}

    public List<Board> findQna(){ return  boardRepository.findQna();}

}
