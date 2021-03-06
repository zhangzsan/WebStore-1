package ua.lviv.melesh.service;

import java.util.List;

import ua.lviv.melesh.domain.Product;

public interface ProductService {
	void insertProduct(Product product);

	void deleteProduct(Product product);

	List<Product> getAllProducts();

	List<Product> getFourResult(Integer index);

	List<Product> getProductByName(String name);

	List<Product> getProductByCategory(String category);

	Product getProductById(Integer id);

}