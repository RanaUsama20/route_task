import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';

import '../../Entites/ProductResponseEntity.dart';

abstract class HomeRepositoryContract{

  Future<Either<Failures,ProductResponseEntity>> getAllProducts();

}
