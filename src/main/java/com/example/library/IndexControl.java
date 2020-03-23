package com.example.library;

import com.example.library.dao.BookDAO;
import com.mongodb.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.UnknownHostException;
import java.util.ArrayList;

@Controller
public class IndexControl {
    @GetMapping("/index")
    public String form(Model model, HttpServletRequest request) {

        HttpSession session=request.getSession(false);

        ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
        BookDAO bookDAO = (BookDAO) context.getBean("bookDAO");

        ArrayList<Book> bookList = bookDAO.findByBookId();
        System.out.println(bookList.get(0).getCoverImage()+"Bye");
        model.addAttribute("books",bookList);


        if(session!=null){
            String name = "Hi  " + (String) session.getAttribute("name");
            model.addAttribute("checkLogin",name);
        }

        return "index";
    }

    @PostMapping("/index")
    public String submit() {
        return "login";
    }
}
