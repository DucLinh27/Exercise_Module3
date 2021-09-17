package model.reponsitory;

import model.bean.Products;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductReponstoryImpl implements IProductRepository{
    private static Map<Integer, Products> products;

    static {
        products = new HashMap<>();
        products.put(1, new Products(1, "IPhone", 25500000, "12/12/2020", "iphone.jpg", "USA"));
        products.put(2, new Products(2, "SamSung", 7500000, "20/05/2015", "samsung.jpg", "China"));
        products.put(3, new Products(3, "Nokia", 1050300, "06/01/2014", "nokia.jpg", "Japan"));
        products.put(4, new Products(4, "Oppo", 15050000, "18/07/2014", "oppo.jpg", "VN"));
        products.put(5, new Products(5, "Xiaomi", 6300000, "20/03/2018", "xiaomi.jpg", "Philip"));
        products.put(6, new Products(6, "BPhone", 4590000, "16/05/2017", "bphone.jpg", "Mexico"));
    }

    @Override
    public List<Products> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Products product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Products product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Products findById(int id) {
        return products.get(id);
    }

    @Override
    public void view(int id) {
        products.get(id);
    }
}
