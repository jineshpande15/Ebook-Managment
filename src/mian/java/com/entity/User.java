/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author jines
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String phno;
    private String password;
    private String address;
    private String landmark;
    private String city;
    private String state;
    private String pincode;
    
      public User() {
          super();
    }
    

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhno() {
        return phno;
    }

    public String getPassword() {
        return password;
    }
    public String getAddress() {
        return address;
    }

    public String getLandmark() {
        return landmark;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getPincode() {
        return pincode;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", email=" + email + ", phno=" + phno + ", password=" + password + ", landmark=" + landmark + ", city=" + city + ", state=" + state + ", pincode=" + pincode + '}';
    }


	

  
    
}
