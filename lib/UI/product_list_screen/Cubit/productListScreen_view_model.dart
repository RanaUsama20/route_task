import 'package:flutter_app_e_commerece_online/Domain/Entites/ProductResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/Domain/Use%20Cases/get_all_products_usecase.dart';
import 'package:flutter_app_e_commerece_online/UI/product_list_screen/Cubit/product_list_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class productListScreenViewModel extends Cubit<ProductListScreenStates>{
  GetAllProductsUseCase getAllProductsUseCase;

  productListScreenViewModel({required this.getAllProductsUseCase}):super(ProductListTabInitialStates());

  List<ProductsEntity> productsList = [];

  getProducts() async {
    emit(ProductListTabLoadingStates(loadingMessage: 'Loading...'));
    var either = await getAllProductsUseCase.invoke();
    either.fold((l) {
      emit(ProductListTabErrorStates(errors: l));
    }, (response) {
      productsList = response.products ?? [];
      emit(ProductListTabSuccessStates(productResponseEntity: response));
    });
  }

}
