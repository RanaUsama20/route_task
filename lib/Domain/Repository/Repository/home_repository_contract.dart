import 'package:dartz/dartz.dart';

import '../../Entites/ProductResponseEntity.dart';
import '../../Entites/failures.dart';

abstract class HomeRepositoryContract{

  Future<Either<Failures,List<ProductResponseEntity>>> getAllProducts();

}
