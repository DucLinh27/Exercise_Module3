package model.reponsitory;

import model.bean.Products;

import java.util.List;

public interface IProductRepository {
    List<Products> findAll();
    void save(Products product);
    void update(int id , Products product);
    void remove(int id);
    Products findById(int id);
    void view(int id);
}
