package org.mybatis.spring.test.mapper;

import java.util.List;

import org.mybatis.spring.test.model.Category;

public interface CategoryMapper {

  List<Category> getCategoryList();

  Category getCategory(String categoryId);

}
