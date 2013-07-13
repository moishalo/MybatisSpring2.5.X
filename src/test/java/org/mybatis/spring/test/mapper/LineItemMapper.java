package org.mybatis.spring.test.mapper;

import java.util.List;

import org.mybatis.spring.test.model.LineItem;

public interface LineItemMapper {

  List<LineItem> getLineItemsByOrderId(int orderId);

  void insertLineItem(LineItem lineItem);

}
