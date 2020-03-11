package com.example.library;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
public class IndexControl {
    @GetMapping("/index")
    public String form(Model model) {
        ObjectMapper mapper = new ObjectMapper();
        String bookData = "";
        try {
            InputStream inputStream = new FileInputStream(new File("/home/shamil/IdeaProjects/LibraryWebApp/src/main/resources/book-list.json"));
            System.out.println(inputStream);
            TypeReference<List<Book>> typeReference = new TypeReference<List<Book>>(){};
            List<Book> book = mapper.readValue(inputStream,typeReference);
            for (Book b: book){
                System.out.println("Name:" + b.getBookName());
                bookData = bookData + ("Name:" + b.getBookName() +"<br>" + "Author:" + b.getAuthor() + "<br><br>");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        model.addAttribute("books",bookData);
        return "index";
    }

    @PostMapping("/index")
    public String submit() {
        return "login";
    }
}
