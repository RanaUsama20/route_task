import 'package:dartz/dartz.dart';
import '../../../Domain/Entites/ProductResponseEntity.dart';
import '../../../Domain/Entites/failures.dart';
import '../../../Domain/Repository/Data Source/home_remote_data_source.dart';
import '../../api/api_manager.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
  ApiManager apiManager;
  HomeRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, List<ProductResponseEntity>>> getAllProducts()async {
    var either = await apiManager.getAllProducts();
    return either.fold((l) {
      return Left(Failures(errorMessage: l.errorMessage));
    }, (response) {
      return Right(response);
    },);
  }
}