package com.mr.shop;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class User {
    private Integer userId;

    private String userName;

    private Integer userGrade=1;

    private Integer userSex;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date userBir;

    private String userPhone;

    private String userMail;

    private String userMibaoa;

    private String userMibaob;

    private String userMibaoc;

    private Integer userState=1;

    private String  userPass;

    public String getUserBirStr(){
        if(userBir !=null && !userBir.equals("")){
            return new SimpleDateFormat("yyyy-MM-dd").format(userBir);
        }
         return "";
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public Integer getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(Integer userGrade) {
        this.userGrade = userGrade;
    }

    public Integer getUserSex() {
        return userSex;
    }

    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    public Date getUserBir() {
        return userBir;
    }

    public void setUserBir(Date userBir) {
        this.userBir = userBir;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail == null ? null : userMail.trim();
    }

    public String getUserMibaoa() {
        return userMibaoa;
    }

    public void setUserMibaoa(String userMibaoa) {
        this.userMibaoa = userMibaoa == null ? null : userMibaoa.trim();
    }

    public String getUserMibaob() {
        return userMibaob;
    }

    public void setUserMibaob(String userMibaob) {
        this.userMibaob = userMibaob == null ? null : userMibaob.trim();
    }

    public String getUserMibaoc() {
        return userMibaoc;
    }

    public void setUserMibaoc(String userMibaoc) {
        this.userMibaoc = userMibaoc == null ? null : userMibaoc.trim();
    }

    public Integer getUserState() {
        return userState;
    }

    public void setUserState(Integer userState) {
        this.userState = userState;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
}