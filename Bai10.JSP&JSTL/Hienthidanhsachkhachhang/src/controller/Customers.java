package controller;

public class Customers {
    private String name;
    private String address;
    private String image;
    private String birthday;

    public Customers(String name, String address, String image, String birthday) {
        this.name = name;
        this.address = address;
        this.image = image;
        this.birthday = birthday;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
}

