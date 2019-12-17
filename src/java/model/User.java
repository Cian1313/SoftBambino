/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ciano
 */
public class User {

    private long id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String userType;
    private boolean isDiasbled;
    private String addressLineOne;
    private String addressLineTwo;
    private String county;
    private String country;
    private String postalCode;

    public void setId(long id) {
        this.id = id;
    }

    public long getId() {
        return this.id;
    }

    public void setFirstName(String fName) {
        this.firstName = fName;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setLastName(String lName) {
        this.lastName = lName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return this.email;
    }

    public void setPassword(String pword) {
        this.password = pword;
    }

    public String getPassword() {
        return this.password;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public boolean getIsDiasbled() {
        return isDiasbled;
    }

    public void setIsDiasbled(boolean isDiasbled) {
        this.isDiasbled = isDiasbled;
    }

    public String getAddressLineOne() {
        return addressLineOne;
    }

    public void setAddressLineOne(String addressLineOne) {
        this.addressLineOne = addressLineOne;
    }

    public String getAddressLineTwo() {
        return addressLineTwo;
    }

    public void setAddressLineTwo(String addressLineTwo) {
        this.addressLineTwo = addressLineTwo;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public User() {

    }

    public User(long id, String email, String pword, String firstName, String lastName, String type, Boolean isDisabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = pword;
        this.userType = type;
        this.isDiasbled = isDisabled;
    }

    public User(long id, String email, String pword, String firstName, String lastName, String type, Boolean isDisabled,
            String addressLine1, String addressLine2, String county, String country, String postalCode) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = pword;
        this.userType = type;
        this.isDiasbled = isDisabled;
        this.addressLineOne = addressLine1;
        this.addressLineTwo = addressLine2;
        this.county = county;
        this.country = country;
        this.postalCode = postalCode;
    }
}
