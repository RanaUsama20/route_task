import 'package:dartz/dartz.dart';

import '../Entites/ProductResponseEntity.dart';
import '../Entites/failures.dart';
import '../Repository/Repository/home_repository_contract.dart';

class GetAllProductsUseCase{
  HomeRepositoryContract repositoryContract;
  GetAllProductsUseCase({required this.repositoryContract});

  Future<Either<Failures,List<ProductResponseEntity>>> invoke(){
    return repositoryContract.getAllProducts();
  }
}