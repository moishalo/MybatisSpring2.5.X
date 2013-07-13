package org.mybatis.spring.test.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.test.model.Item;

public interface ItemMapper {

  void updateInventoryQuantity(Map<String, Object> param);

  int getInventoryQuantity(String itemId);

  List<Item> getItemListByProduct(String productId);

  Item getItem(String itemId);

}
