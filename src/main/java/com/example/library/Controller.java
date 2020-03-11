package com.example.library;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Controller {
    @GetMapping("/index")
    public String greetingForm(Model model) {
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
    public String greetingSubmit() {
        return "login";
    }




    @GetMapping("/login")
    public String greetingForm1(Model model) {
        /*Login login = new Login();
        model.addAttribute("login", login);
*/


        return "login";
    }

    @PostMapping("/login")
    public String greetingSubmit1(@ModelAttribute Login login, Model model, HttpServletRequest request) {
        // model.addAttribute("result", login);
        String user = request.getParameter("userName");
        String password = request.getParameter("password");
        boolean found = false;


        ObjectMapper mapper = new ObjectMapper();
        try {
            InputStream inputStream = new FileInputStream(new File("/home/shamil/IdeaProjects/LibraryWebApp/src/main/resources/user-list.json"));
            System.out.println(inputStream);
            TypeReference<List<Login>> typeReference = new TypeReference<List<Login>>(){};
            List<Login> log = mapper.readValue(inputStream,typeReference);
            for (Login l: log){

                if ((l.getUserId().equals(user)) && (l.getPassword().equals(password))){
                    found = true;
                    System.out.println("Checking:"+l.getUserId());
                  //  setLoggedUser(l.getUserId());
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(found){
         //   System.out.println("My Name : " + getLoggedUser());
            return "addBook";
        }else{
            return "login";
        }

    }



    @GetMapping("/addBook")
    public String greetingForm2(Model model) {
        model.addAttribute("addBook", new AddBook());



        return "addBook";
    }

    @PostMapping("/addBook")
    public String greetingSubmit2(@ModelAttribute AddBook addBook, Model model, HttpServletRequest request) {
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
           // newBook.setAddedBy((new LoginControl()).getLoggedUser());
           // System.out.println("MyError: "+loginControl.getLoggedUser());

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
