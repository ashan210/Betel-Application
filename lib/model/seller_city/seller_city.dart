import 'package:json_annotation/json_annotation.dart';
part 'seller_city.g.dart';

@JsonSerializable()
class SellerCity {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  

  SellerCity({
    this.id,
    this.name,
     
  });

  factory SellerCity.fromJson(Map<String, dynamic> json) => _$SellerCityFromJson(json);
  Map<String, dynamic> toJson() => _$SellerCityToJson(this);
}