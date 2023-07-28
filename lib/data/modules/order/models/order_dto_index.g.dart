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
      customerApiDto:
          CustomerApiDto.fromJson(json['customer'] as Map<String, dynamic>),
      items: (json['order'] as List<dynamic>)
          .map((e) => ItemOrderApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderApiDtoToJson(OrderApiDto instance) =>
    <String, dynamic>{
      'customer': instance.customerApiDto,
      'order': instance.items,
    };
