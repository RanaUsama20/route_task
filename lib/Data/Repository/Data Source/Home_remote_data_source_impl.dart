import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/Data/api/api_manager.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/ProductResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';
import 'package:flutter_app_e_commerece_online/Domain/Repository/Data%20Source/home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
  ApiManager apiManager;
  HomeRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, ProductResponseEntity>> getAllProducts()async {
    var either = await apiManager.getAllProducts();
    return either.fold((l) {
      return Left(Failures(errorMessage: l.errorMessage));
    }, (response) {
      return Right(response);
    });
  }
}