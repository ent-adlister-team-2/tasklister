package com.codeup.adlister.models;

public class Households {
    private int id;
    private String username;
    private String email;
    private String password;
    private String name;

    public Households() {}

    public Households(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public Households(int id, String username, String email, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }
    public Households(int id, String username, String email, String password, String name) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
