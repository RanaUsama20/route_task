import 'package:dartz/dartz.dart';
import '../../../Domain/Entites/ProductResponseEntity.dart';
import '../../../Domain/Entites/failures.dart';
import '../../../Domain/Repository/Data Source/home_remote_data_source.dart';
import '../../../Domain/Repository/Repository/home_repository_contract.dart';


class HomeRepositoryImpl implements HomeRepositoryContract{
  HomeRemoteDataSource remoteDataSource;
  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failures, List<ProductResponseEntity>>> getAllProducts() {
   return remoteDataSource.getAllProducts();
  }
}