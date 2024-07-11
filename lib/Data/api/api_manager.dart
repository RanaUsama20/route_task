import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/Domain/Entites/failures.dart';
import 'package:flutter_app_e_commerece_online/data/api/api_constants.dart';
import 'package:flutter_app_e_commerece_online/data/model/response/ProductResponseDto.dart';

import 'package:http/http.dart' as http;

class ApiManager {
  ApiManager._();

  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }


  Future<Either<Failures, ProductResponseDto>> getAllProducts() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(Apiconstants.baseUrl, Apiconstants.getAllProductsApi);
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      var productResponse = ProductResponseDto.fromJson(json);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(productResponse);
      } else {
        return Left(ServerError(errorMessage: 'Server Error'));
      }
    } else {
      /// no internet connection
      return Left(NetworkError(errorMessage: 'Check Internet connection'));
    }
  }

}
