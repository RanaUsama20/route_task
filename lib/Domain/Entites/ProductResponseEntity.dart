
class ProductResponseEntity {
  ProductResponseEntity({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});


  List<ProductsEntity>? products;
  int? total;
  int? skip;
  int? limit;


}



class ProductsEntity {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;  // Ensure price is double, as per your model
  num? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  DimensionsEntity? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<ReviewsEntity>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  MetaEntity? meta;
  List<String>? images;
  String? thumbnail;

  ProductsEntity({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  });

}


/// createdAt : "2024-05-23T08:56:21.618Z"
/// updatedAt : "2024-05-23T08:56:21.618Z"
/// barcode : "9164035109868"
/// qrCode : "https://assets.dummyjson.com/public/qr-code.png"

class MetaEntity {
  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;

  MetaEntity({
    this.createdAt,
    this.updatedAt,
    this.barcode,
    this.qrCode,
  });

}


/// rating : 2
/// comment : "Very unhappy with my purchase!"
/// date : "2024-05-23T08:56:21.618Z"
/// reviewerName : "John Doe"
/// reviewerEmail : "john.doe@x.dummyjson.com"

class ReviewsEntity {
  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  ReviewsEntity({
    this.rating,
    this.comment,
    this.date,
    this.reviewerName,
    this.reviewerEmail,
  });

}


/// width : 23.17
/// height : 14.43
/// depth : 28.01

class DimensionsEntity {
  num? width;
  num? height;
  num? depth;

  DimensionsEntity({
    this.width,
    this.height,
    this.depth,
  });

}
