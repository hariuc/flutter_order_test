import 'package:flutter_order_test/data/modules/order/mapping/order_mapping.dart';
import 'package:flutter_order_test/data/modules/order/source/api/order_api_data_source.dart';
import 'package:flutter_order_test/domain/core/errors/failure.dart';
import 'package:flutter_order_test/domain/modules/order/entities/order_index.dart';
import 'package:flutter_order_test/domain/modules/order/repository/order_repository.dart';

import 'package:http/http.dart' as http;

class OderRepositoryImpl extends OrderRepository {
  final OrderApiDataSource dataSource;

  OderRepositoryImpl({required this.dataSource});

  @override
  Future<List<OrderEntity>> loadOrder() async {
    try {
      final dataDto = await dataSource.getOrderList();
      final mapping = OrderMapping();
      return dataDto.map((e) => mapping.mapToEntity(e)).toList();
    } on http.ClientException catch (e, s) {
      return throw ServerFailure(errorObject: e);
    } catch (e, s) {
      return throw OtherFailure(errorObject: e);
    }
  }
}
