// Mocks generated by Mockito 5.4.4 from annotations
// in route_task/test/productListscreen_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:flutter_bloc/flutter_bloc.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:route_task/Domain/Entites/ProductResponseEntity.dart' as _i5;
import 'package:route_task/Domain/Use%20Cases/get_all_products_usecase.dart'
    as _i2;
import 'package:route_task/UI/product_list_screen/Cubit/product_list_states.dart'
    as _i3;
import 'package:route_task/UI/product_list_screen/Cubit/productListScreen_view_model.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetAllProductsUseCase_0 extends _i1.SmartFake
    implements _i2.GetAllProductsUseCase {
  _FakeGetAllProductsUseCase_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductListScreenStates_1 extends _i1.SmartFake
    implements _i3.ProductListScreenStates {
  _FakeProductListScreenStates_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [productListScreenViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockproductListScreenViewModel extends _i1.Mock
    implements _i4.productListScreenViewModel {
  MockproductListScreenViewModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetAllProductsUseCase get getAllProductsUseCase => (super.noSuchMethod(
        Invocation.getter(#getAllProductsUseCase),
        returnValue: _FakeGetAllProductsUseCase_0(
          this,
          Invocation.getter(#getAllProductsUseCase),
        ),
      ) as _i2.GetAllProductsUseCase);

  @override
  set getAllProductsUseCase(
          _i2.GetAllProductsUseCase? _getAllProductsUseCase) =>
      super.noSuchMethod(
        Invocation.setter(
          #getAllProductsUseCase,
          _getAllProductsUseCase,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i5.ProductResponseEntity> get productsList => (super.noSuchMethod(
        Invocation.getter(#productsList),
        returnValue: <_i5.ProductResponseEntity>[],
      ) as List<_i5.ProductResponseEntity>);

  @override
  set productsList(List<_i5.ProductResponseEntity>? _productsList) =>
      super.noSuchMethod(
        Invocation.setter(
          #productsList,
          _productsList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.ProductListScreenStates get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeProductListScreenStates_1(
          this,
          Invocation.getter(#state),
        ),
      ) as _i3.ProductListScreenStates);

  @override
  _i6.Stream<_i3.ProductListScreenStates> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i6.Stream<_i3.ProductListScreenStates>.empty(),
      ) as _i6.Stream<_i3.ProductListScreenStates>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void emit(_i3.ProductListScreenStates? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onChange(_i7.Change<_i3.ProductListScreenStates>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}
