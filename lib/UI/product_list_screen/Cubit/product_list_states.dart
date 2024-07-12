

import 'package:flutter_app_e_commerece_online/Domain/Entites/ProductResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';

abstract class ProductListScreenStates{}

class ProductListTabInitialStates extends ProductListScreenStates{}
class ProductListTabLoadingStates extends ProductListScreenStates{
  String? loadingMessage  ;
  ProductListTabLoadingStates({required this.loadingMessage});
}
class ProductListTabErrorStates extends ProductListScreenStates{
  Failures errors ;
  ProductListTabErrorStates({required this.errors});
}

class ProductListTabSuccessStates extends ProductListScreenStates {
  ProductResponseEntity productResponseEntity ;
  ProductListTabSuccessStates({required this.productResponseEntity});
}
