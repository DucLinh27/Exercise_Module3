package model.service;

import model.bean.Products;

import java.util.List;

public interface IProductService {
    List<Products> findAll();

    void save(Products product);

    void update(int id, Products product);

    void remove(int id);

    Products findById(int id);

    void view(int id);
}
