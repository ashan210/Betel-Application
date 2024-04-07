// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Seller _$SellerFromJson(Map<String, dynamic> json) => Seller(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      contactnumber: (json['contact number'] as num?)?.toDouble(),
      largeprice: (json['large price'] as num?)?.toDouble(),
      mediumprice: (json['medium price'] as num?)?.toDouble(),
      smallprice: (json['small price'] as num?)?.toDouble(),
      city: json['city'] as String?,
    );

Map<String, dynamic> _$SellerToJson(Seller instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'contact number': instance.contactnumber,
      'large price': instance.largeprice,
      'medium price': instance.mediumprice,
      'small price': instance.smallprice,
      'city': instance.city,
    };