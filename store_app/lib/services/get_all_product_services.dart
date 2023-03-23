import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

import '../helper/api.dart';

class AllProductsService {
  Future<List<ProductModle>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    //
    //
    List<ProductModle> productsList = [];
    //
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModle.fromJson(data[i]));
    }
    return productsList;
  }
}
