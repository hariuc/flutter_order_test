import '../entities/order_index.dart';

abstract class OrderRepository {

  Future<List<OrderEntity>> loadOrder();

}
