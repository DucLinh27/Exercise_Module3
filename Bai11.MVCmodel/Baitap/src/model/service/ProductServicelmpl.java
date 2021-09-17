package model.service;

import model.bean.Products;
import model.reponsitory.IProductRepository;
import model.reponsitory.ProductReponstoryImpl;

import java.util.List;

public class ProductServicelmpl implements IProductService{

        private IProductRepository productRepository = new ProductReponstoryImpl();

        @Override
        public List<Products> findAll() {
            return productRepository.findAll();
        }

        @Override
        public void save(Products product) {
            productRepository.save(product);
        }

        @Override
        public void update(int id, Products product) {
            productRepository.update(id, product);
        }

        @Override
        public void remove(int id) {
            productRepository.remove(id);
        }

        @Override
        public Products findById(int id) {
            return productRepository.findById(id);
        }

        @Override
        public void view(int id) {
            productRepository.view(id);
        }
    }


