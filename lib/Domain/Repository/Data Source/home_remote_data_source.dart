import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/ProductResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';

abstract class HomeRemoteDataSource{

  Future<Either<Failures,ProductResponseEntity>> getAllProducts();

}