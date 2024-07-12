import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'UI/product_list_screen/productListScreen.dart';
import 'UI/utils/CartScreen.dart';
import 'UI/utils/ProductDetailsView.dart';
import 'UI/utils/my_bloc_observer.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: ProductListScreen.routeName,
            routes: {
              ProductListScreen.routeName: (context) => ProductListScreen(),
              ProductDetailsView.routeName: (context) => ProductDetailsView(),
              CartScreen.routeName: (context) => CartScreen()
            },
          );
        }
    );}}