// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoRequestModel _$$_CryptoRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_CryptoRequestModel(
      sortBy: json['sortBy'] as String,
      sortType: json['sortType'] as String,
      start: json['start'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$_CryptoRequestModelToJson(
        _$_CryptoRequestModel instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'sortType': instance.sortType,
      'start': instance.start,
      'limit': instance.limit,
    };
