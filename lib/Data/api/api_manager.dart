import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../Domain/Entites/failures.dart';
import '../Model/Response/ProductResponseDto.dart';

class ApiManager {
  ApiManager._();

  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }


  Future<Either<Failures, List<ProductResponseDto>>> getAllProducts() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.parse('https://fakestoreapi.com/products');
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      print('Response JSON: $json');
      List<ProductResponseDto> productResponseList = List<ProductResponseDto>.from(
          json.map((item) => ProductResponseDto.fromJson(item))
      );

      print('this is the productResponseList: $productResponseList');


      if (response.statusCode >= 200 && response.statusCode < 300) {
         return Right(productResponseList);
        // return Right(productResponse);
      } else {
        return Left(ServerError(errorMessage: 'Server Error'));
      }
    } else {
      return Left(NetworkError(errorMessage: 'Check Internet connection'));
    }
  }

}
