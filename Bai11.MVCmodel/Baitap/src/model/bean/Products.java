package model.bean;
public class Products {
    private int id;
    private String name;
    private double price;
    private String date;
    private String img;
    private String origin;

    public Products() {
    }

    public Products(int id, String name, double price, String date, String img, String origin) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.date = date;
        this.img = img;
        this.origin = origin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }
}
