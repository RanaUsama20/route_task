import 'package:dartz/dartz.dart';

import '../../Entites/ProductResponseEntity.dart';
import '../../Entites/failures.dart';


abstract class HomeRemoteDataSource{

  Future<Either<Failures,ProductResponseEntity>> getAllProducts();

}