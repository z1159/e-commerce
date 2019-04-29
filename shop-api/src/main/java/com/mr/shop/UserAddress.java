package com.mr.shop;

public class UserAddress {
    private Integer useraId;

    private Integer userId;

    private String useraAddress;

    private String userName;

    private String userPhone;

    public Integer getUseraId() {
        return useraId;
    }

    public void setUseraId(Integer useraId) {
        this.useraId = useraId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUseraAddress() {
        return useraAddress;
    }

    public void setUseraAddress(String useraAddress) {
        this.useraAddress = useraAddress == null ? null : useraAddress.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }
}