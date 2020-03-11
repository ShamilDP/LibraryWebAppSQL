package com.example.library;

public class Book {
    private String bookName;
    private String author;
    private String coverImage;
    private String addedBy;
    private String bookId;
    private String copyCount;

    public Book() {
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }


    public String getCopyCount() {
        return copyCount;
    }

    public void setCopyCount(String copyCount) {
        this.copyCount = copyCount;
    }


    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public String getAddedBy() {
        return addedBy;
    }

    public void setAddedBy(String addedBy) {
        this.addedBy = addedBy;
    }


    public String getBookName() {
        return bookName;
    }
}
