// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemOrderApiDto _$ItemOrderApiDtoFromJson(Map<String, dynamic> json) =>
    ItemOrderApiDto(
      productApiDto:
          ProductApiDto.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0.0,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      sumaItem: (json['suma_item'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$ItemOrderApiDtoToJson(ItemOrderApiDto instance) =>
    <String, dynamic>{
      'product': instance.productApiDto,
      'quantity': instance.quantity,
      'price': instance.price,
      'suma_item': instance.sumaItem,
    };

OrderApiDto _$OrderApiDtoFromJson(Map<String, dynamic> json) => OrderApiDto(
      orderDate: DateTime.parse(json['date'] as String),
      customerName: json['customer'] as String,
      status: json['status'] as String,
      amount: (json['amount'] as num).toDouble(),
      number: json['number'] as String,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$OrderApiDtoToJson(OrderApiDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'date': instance.orderDate.toIso8601String(),
      'customer': instance.customerName,
      'status': instance.status,
      'amount': instance.amount,
      'uuid': instance.uuid,
    };
