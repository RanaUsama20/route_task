
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/UI/product_list_screen/Cubit/product_list_states.dart';

import '../../../Domain/Entites/ProductResponseEntity.dart';
import '../../../Domain/Use Cases/get_all_products_usecase.dart';


class productListScreenViewModel extends Cubit<ProductListScreenStates>{
  GetAllProductsUseCase getAllProductsUseCase;

  productListScreenViewModel({required this.getAllProductsUseCase}):super(ProductListScreenInitialStates());

  List<ProductResponseEntity> productsList = [];

  getProducts() async {
    emit(ProductListScreenLoadingStates(loadingMessage: 'Loading...'));
    var either = await getAllProductsUseCase.invoke();
    either.fold((l) {
      emit(ProductListScreenErrorStates(errors: l));
    }, (response) {
       productsList = response;
      print('this is the response $response');
      emit(ProductListScreenSuccessStates(productResponseEntity: productsList));
    });
  }

}
