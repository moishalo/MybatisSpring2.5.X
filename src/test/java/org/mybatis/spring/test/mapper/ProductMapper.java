package org.mybatis.spring.test.mapper;

import java.util.List;

import org.mybatis.spring.test.model.Product;

public interface ProductMapper {

  List<Product> getProductListByCategory(String categoryId);

  Product getProduct(String productId);

  List<Product> searchProductList(String keywords);

}
