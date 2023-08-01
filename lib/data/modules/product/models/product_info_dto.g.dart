// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductApiDto _$ProductApiDtoFromJson(Map<String, dynamic> json) =>
    ProductApiDto(
      name: json['name'] as String,
      cod: json['cod'] as String,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$ProductApiDtoToJson(ProductApiDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cod': instance.cod,
      'uuid': instance.uuid,
    };
