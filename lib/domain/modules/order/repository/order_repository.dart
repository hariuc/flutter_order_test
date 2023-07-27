import '../entities/order_index.dart';

abstract class OrderRepository {
  Future<List<OrderEntity>> loadOrder();

  Future<void> saveOrder({required OrderEntity orderEntity});
}
