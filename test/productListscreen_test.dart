// test/product_list_screen_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:route_task/Domain/Entites/ProductResponseEntity.dart';
import 'package:route_task/Domain/Entites/failures.dart';
import 'package:route_task/UI/product_list_screen/Cubit/productListScreen_view_model.dart';
import 'package:route_task/UI/product_list_screen/Cubit/product_list_states.dart';
import 'package:route_task/UI/product_list_screen/Widget/GridViewCardItem.dart';
import 'package:route_task/UI/product_list_screen/productListScreen.dart';
import 'package:route_task/UI/utils/CartScreen.dart';
import 'package:route_task/UI/utils/ProductDetailsView.dart';


// Generate the mock classes
@GenerateMocks([productListScreenViewModel])
import 'productListscreen_test.mocks.dart';

void main() {
  // Mock the dependencies
  late MockproductListScreenViewModel mockViewModel;

  setUp(() {
    mockViewModel = MockproductListScreenViewModel();
  });

  Widget createWidgetUnderTest() {
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
            CartScreen.routeName: (context) => CartScreen(),
          },
        );
      },
    );
  }

  testWidgets('ProductListScreen displays product list', (WidgetTester tester) async {
    // Arrange
    when(mockViewModel.state).thenReturn(ProductListScreenLoadingStates(loadingMessage: ''));
    when(mockViewModel.productsList).thenReturn([
      ProductsEntity(id: 1, title: 'Product 1', price: 10.0),
      ProductsEntity(id: 2, title: 'Product 2', price: 20.0),
    ]);

    await tester.pumpWidget(
      BlocProvider<productListScreenViewModel>(
        create: (context) => mockViewModel,
        child: createWidgetUnderTest(),
      ),
    );

    // Act
    await tester.pumpAndSettle();

    // Assert
    expect(find.byType(GridView), findsOneWidget);
    expect(find.byType(GridViewCardItem), findsNWidgets(2));
  });

  testWidgets('ProductListScreen displays circular progress indicator when loading', (WidgetTester tester) async {
    // Arrange
    when(mockViewModel.state).thenReturn(ProductListScreenLoadingStates(loadingMessage: ''));

    await tester.pumpWidget(
      BlocProvider<productListScreenViewModel>(
        create: (context) => mockViewModel,
        child: createWidgetUnderTest(),
      ),
    );

    // Act
    await tester.pump();

    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('ProductListScreen displays circular progress indicator when there is no internet connection', (WidgetTester tester) async {
    // Arrange
    when(mockViewModel.state).thenReturn(ProductListScreenErrorStates(errors: Failures(errorMessage: 'No Connection')));

    await tester.pumpWidget(
      BlocProvider<productListScreenViewModel>(
        create: (context) => mockViewModel,
        child: createWidgetUnderTest(),
      ),
    );

    // Act
    await tester.pump();

    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
