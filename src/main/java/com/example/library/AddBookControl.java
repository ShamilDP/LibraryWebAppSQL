package com.example.library;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.http.HttpServletRequest;


@Controller
public class AddBookControl {
    LoginControl loginControl = new LoginControl();

    @GetMapping("/addBook")
    public String form(Model model) {
        model.addAttribute("addBook", new AddBook());



        return "addBook";
    }

    @PostMapping("/addBook")
    public String submit(@ModelAttribute AddBook addBook, Model model, HttpServletRequest request) {
        model.addAttribute("bookResult", addBook);

        ObjectMapper mapper = new ObjectMapper();
        Book newBook = new Book();
        String bookData = "";
        try {
            InputStream inputStream = new FileInputStream(new File("/home/shamil/IdeaProjects/LibraryWebApp/src/main/resources/book-list.json"));
            System.out.println(inputStream);
            TypeReference<List<Book>> typeReference = new TypeReference<List<Book>>(){};
            List<Book> book = mapper.readValue(inputStream,typeReference);

            newBook.setBookName(request.getParameter("bookName"));;
            newBook.setAuthor(request.getParameter("authorName"));
            newBook.setCopyCount(request.getParameter("bookCount"));
            newBook.setCoverImage(request.getParameter("coverImage"));
            newBook.setBookId(Integer.toString (Integer.parseInt(book.get(book.size()-1).getBookId()) +1));
            newBook.setAddedBy(loginControl.getLoggedUser());
           //beyondm
             System.out.println("MyError: "+ loginControl.getLoggedUser());

            book.add(newBook);

            mapper.writeValue(new File("/home/shamil/IdeaProjects/LibraryWebApp/src/main/resources/book-list.json"), book);
            /*for (Book b: book){
                mapper.writeValue(new File("/home/shamil/IdeaProjects/LibraryWebApp/src/main/resources/book-list.json"), book);
            }*/
        } catch (IOException e) {
            e.printStackTrace();
        }


        return "addBook";
    }
}
