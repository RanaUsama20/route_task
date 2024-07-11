import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/ProductResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';
import 'package:flutter_app_e_commerece_online/Domain/Repository/Data%20Source/home_remote_data_source.dart';
import 'package:flutter_app_e_commerece_online/Domain/Repository/Repository/home_repository_contract.dart';

class HomeRepositoryImpl implements HomeRepositoryContract{
  HomeRemoteDataSource remoteDataSource;
  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failures, ProductResponseEntity>> getAllProducts() {
   return remoteDataSource.getAllProducts();
  }
}