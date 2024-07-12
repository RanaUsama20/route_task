import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Domain/Dependency injection.dart';
import '../utils/CartScreen.dart';
import '../utils/ProductDetailsView.dart';
import '../utils/my_assets.dart';
import '../utils/my_colors.dart';
import 'Cubit/productListScreen_view_model.dart';
import 'Cubit/product_list_states.dart';
import 'Widget/GridViewCardItem.dart';
import 'Widget/custom_text_field.dart';

class ProductListScreen extends StatelessWidget {
  static const String routeName = 'ProductListScreen';
  productListScreenViewModel viewModel = productListScreenViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());
  @override
  Widget build(BuildContext context) {
    return BlocProvider<productListScreenViewModel>(
      create: (context)=>viewModel..getProducts() ,
      child: BlocBuilder<productListScreenViewModel,ProductListScreenStates>(
          builder: (context,state){
            return  Scaffold(
              body:SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Image.asset(
                        MyAssets.logo,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Material(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(CartScreen.routeName);
                              },
                              child: Badge(
                                label: Text('0'),
                                child: ImageIcon(
                                  AssetImage(MyAssets.shoppingCart),
                                  size: 28.sp,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      state is ProductListTabLoadingStates ?
                      const Center(child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),)
                          :
                      Expanded(
                        child: GridView.builder(
                          itemCount: viewModel.productsList.length,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2 / 2.4,
                              crossAxisSpacing: 16.w,
                              mainAxisSpacing: 16.h),
                          itemBuilder: (context, index) {
                            return InkWell(
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.of(context).
                                pushNamed(ProductDetailsView.routeName,
                                    arguments: viewModel.productsList[index]
                                );
                              },
                              child: GridViewCardItem(productsEntity: viewModel.productsList[index]),

                            );
                          },
                        ),
                      )
                    ]),
              ),
            ) ,
            );
          }
      ),
    );

  }
}
