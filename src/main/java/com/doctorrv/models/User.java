package com.doctorrv.models;



public class User {
    private int id;
    private String fullName;
    private String email;
    private String password;
    private String phone;
    private String role;
    private String specialization;

    // Constructeur par défaut
    public User() {}

    // Constructeur pour un patient
    public User(String fullName, String email, String password, String phone) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role = "patient";
    }

    // Constructeur pour un médecin
    public User(String fullName, String email, String password, String phone, String specialization) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.specialization = specialization;
        this.role = "doctor";
    }

    // Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }
}
