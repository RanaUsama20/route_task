import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';
import 'package:flutter_app_e_commerece_online/Domain/Repository/Repository/home_repository_contract.dart';
import '../Entites/ProductResponseEntity.dart';

class GetAllProductsUseCase{
  HomeRepositoryContract repositoryContract;
  GetAllProductsUseCase({required this.repositoryContract});

  Future<Either<Failures,ProductResponseEntity>> invoke(){
    return repositoryContract.getAllProducts();
  }
}