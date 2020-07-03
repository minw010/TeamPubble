package com.pubble.conpub.controller;

import com.pubble.conpub.domain.Board;
import com.pubble.conpub.service.BoardService;
import com.pubble.conpub.service.FaqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {

    @Autowired
    private BoardService boardService;

    @Autowired
    private FaqService faqService;

    /*@RequestMapping("/")
    public String a(){
        return "index";
    }*/

    @RequestMapping("/client/page")
    public String clientPage(Model model){

        model.addAttribute("noticeList",boardService.findNotice());

        return "Mdirectory/Client_Page";
    }

    @RequestMapping("/client/estimate")
    public String clientEstimate(Model model){

        model.addAttribute("estimateList",boardService.findEstimate());

        return "Mdirectory/Client_Estimate";
    }

    @RequestMapping("/client/qna")
    public String clientQna(Model model){

        model.addAttribute("qnaList",boardService.findQna());

        return "Mdirectory/Client_Qna";
    }

    @RequestMapping("/faq/list")
    public String faqList(Model model){

        model.addAttribute("faqList",faqService.findFaq());

        return "Mdirectory/Faq_List";
    }

    @GetMapping("/board/write")
    public String boardWrite(Model model){
        return "board/boardWriteForm";
    }


    @PostMapping("/board/writeOk")
    public String boardWriteOk(Board board){
        return "redirect:/";
    }

}
