
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/UI/product_list_screen/Cubit/product_list_states.dart';

import '../../../Domain/Entites/ProductResponseEntity.dart';
import '../../../Domain/Use Cases/get_all_products_usecase.dart';


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
