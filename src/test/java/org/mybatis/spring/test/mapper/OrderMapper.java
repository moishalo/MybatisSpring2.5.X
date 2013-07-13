package org.mybatis.spring.test.mapper;

import java.util.List;

import org.mybatis.spring.test.model.Order;

public interface OrderMapper {

  List<Order> getOrdersByUsername(String username);

  Order getOrder(int orderId);
  
  void insertOrder(Order order);
  
  void insertOrderStatus(Order order);

}
