package com.example.library.dao.impl;

import com.example.library.Book;
import com.example.library.User;
import com.example.library.dao.BookDAO;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JdbcBookDAO implements BookDAO {
    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void insert(Book book){

        String sql = "INSERT INTO Books " +
                "(bookName,copyCount,author,coverImage,addedBy) VALUES (?, ?, ?, ?, ?)";
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, book.getBookName());
            ps.setString(2, book.getCopyCount());
            ps.setString(3, book.getAuthor());
            ps.setString(4, book.getCoverImage());
            ps.setString(5, book.getAddedBy());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);

        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {}
            }
        }
    }

    public ArrayList<Book> findByBookId(){

        String sql = "SELECT * FROM Books";
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ArrayList<Book> bookArray = new ArrayList<>();
            Book book = null;
            ResultSet rs = ps.executeQuery();
            System.out.printf("Check"+rs.toString());
            while (rs.next()) {
                book = new Book(
                        rs.getString("bookName"),
                        rs.getString("author"),
                        rs.getString("coverImage"),
                        rs.getString("addedBy"),
                        rs.getString("copyCount")
                );
                bookArray.add(book);
            }
            rs.close();
            ps.close();

            System.out.println("Shamil"+book);
            return bookArray;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {}
            }
        }
    }

    public ArrayList<User> findByUserId(){
        {

            String sql = "SELECT * FROM Users";
            Connection conn = null;

            try {
                conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                //  ps.setString(1, bookId);
                ArrayList<User> userArray = new ArrayList<>();
                User user = null;
                ResultSet rs = ps.executeQuery();
                System.out.printf("Check"+rs.toString());
                while (rs.next()) {
                    user = new User(
                            rs.getString("userId"),
                            rs.getString("firstName"),
                            rs.getString("lastName"),
                            rs.getString("email"),
                            rs.getString("password")
                    );
                    userArray.add(user);
                }
                rs.close();
                ps.close();

                return userArray;

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {}
                }
            }
        }
    }
}
