import 'package:json_annotation/json_annotation.dart';
part 'seller.g.dart';

@JsonSerializable()
class Seller {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "description")
  String? description;

  @JsonKey(name: "location")
  String? location;

  @JsonKey(name: "large price")
  double? largeprice;

  @JsonKey(name: "medium price")
  double? mediumprice;

  @JsonKey(name: "small price")
  double? smallprice;

  @JsonKey(name: "city")
  String? city;

  Seller({
    this.id,
    this.name,
    this.description,
    this.location,
    this.largeprice,
    this.mediumprice,
    this.smallprice,
    this.city,
  });

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);
  Map<String, dynamic> toJson() => _$SellerToJson(this);
}