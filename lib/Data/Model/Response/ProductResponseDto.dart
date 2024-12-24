import 'package:route_task/Domain/Entites/ProductResponseEntity.dart';

/// id : 1
/// title : "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops"
/// price : 109.95
/// description : "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday"
/// category : "men's clothing"
/// image : "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
/// rating : {"rate":3.9,"count":120}

class ProductResponseDto extends ProductResponseEntity {
  ProductResponseDto({
      super.id,
     super.title,
     super.price,
     super.description,
     super.category,
     super.image,
     super.rating,});

  ProductResponseDto.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? RatingDto.fromJson(json['rating']) : null;
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
     map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['description'] = description;
    map['category'] = category;
    map['image'] = image;
    if (rating != null) {
      map['rating'] = rating;
    }
    return map;
  }

}

/// rate : 3.9
/// count : 120

class RatingDto  extends RatingEntity{
  RatingDto({
      super.rate,
      super.count
    ,});

  RatingDto.fromJson(dynamic json) {
    rate = double.tryParse(json['rate'].toString()) ?? 0.0;
    count = int.tryParse(json['count'].toString()) ?? 0;
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }

}