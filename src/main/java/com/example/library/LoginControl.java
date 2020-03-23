package com.example.library;

import com.example.library.dao.BookDAO;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import org.json.simple.JSONObject;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.UnknownHostException;
import java.util.ArrayList;

@Controller
public class LoginControl {
    private static String loggedUser;

    public String getLoggedUser() {
        return loggedUser;
    }

    @GetMapping("/login")
    public String form() {
        return "login";
    }
    @PostMapping("/login")
    public String submit(@ModelAttribute Login login, Model model, HttpServletRequest request) {
        HttpSession session;
        String user = request.getParameter("userName");
        String password = request.getParameter("password");

        if(checkLogin(user,password)){
            session = request.getSession();
            session.setAttribute("name", loggedUser);
            String name = "Hi  " + (String) session.getAttribute("name");
            model.addAttribute("checkLogin",name);
            return "addBook";
        }else{
            return "login";
        }
    }

    public boolean checkLogin(String user, String password){
        boolean found = false;

        ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
        BookDAO bookDAO = (BookDAO) context.getBean("bookDAO");

        ArrayList<User> userList = bookDAO.findByUserId();
        for (User userCheck: userList) {
            if ((userCheck.getUserId().equals(user)) && (userCheck.getPassword().equals(password))){
                found = true;
                loggedUser = user;
                break;
            }

        }
        System.out.println(userList.get(0).getUserId()+"Bye");

        return found;


    }
}
