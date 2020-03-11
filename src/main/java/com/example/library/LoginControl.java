package com.example.library;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
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

@Controller
public class LoginControl {
    private static String loggedUser;

    public String getLoggedUser() {
        return loggedUser;
    }

    public void setLoggedUser(String loggedUser) {
        this.loggedUser = loggedUser;
    }

    @GetMapping("/login")
    public String form(Model model) {

        return "login";
    }



    @PostMapping("/login")
    public String submit(@ModelAttribute Login login, Model model, HttpServletRequest request) {

        String user = request.getParameter("userName");
        String password = request.getParameter("password");

        if(checkLogin(user,password)){

            return "addBook";
        }else{
            return "login";
        }

    }

    public boolean checkLogin(String user, String password){
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
                    //   setLoggedUser(l.getUserId());
                    loggedUser = l.getUserId();
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return found;
    }
}
