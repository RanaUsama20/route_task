
import '../../../Domain/Entites/ProductResponseEntity.dart';
import '../../../Domain/Entites/failures.dart';

abstract class ProductListScreenStates{}

class ProductListScreenInitialStates extends ProductListScreenStates{}
class ProductListScreenLoadingStates extends ProductListScreenStates{
  String? loadingMessage  ;
  ProductListScreenLoadingStates({required this.loadingMessage});
}
class ProductListScreenErrorStates extends ProductListScreenStates{
  Failures errors ;
  ProductListScreenErrorStates({required this.errors});
}

class ProductListScreenSuccessStates extends ProductListScreenStates {
  List<ProductResponseEntity> productResponseEntity ;
  ProductListScreenSuccessStates({required this.productResponseEntity});
}

