package com.example.library.dao;

import com.example.library.Book;
import com.example.library.User;

import java.util.ArrayList;

public interface BookDAO {
    public void insert(Book book);
    public ArrayList<Book> findByBookId();
    public ArrayList<User> findByUserId();
}
