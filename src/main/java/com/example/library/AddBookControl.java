package com.example.library;


import com.example.library.dao.BookDAO;
import com.mongodb.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import java.net.UnknownHostException;
import java.util.ArrayList;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import javax.servlet.http.HttpServletRequest;

@Controller
public class AddBookControl {
    LoginControl loginControl = new LoginControl();

    @PostMapping("/addBook")
    public String submit(@ModelAttribute AddBook addBook, Model model, HttpServletRequest request) {


        ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");

        BookDAO bookDAO = (BookDAO) context.getBean("bookDAO");
        ArrayList<Book> bookList = bookDAO.findByBookId();
        Book book1 = new Book(request.getParameter("bookName"), request.getParameter("authorName"),request.getParameter("coverImage"),loginControl.getLoggedUser(),request.getParameter("bookCount")); // Integer.toString(Integer.parseInt(id) + 1),
        bookDAO.insert(book1);



        return "addBook";
    }
}
