import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class CategoriesService {
  Future<List<ProductModle>> getCategoriesProducts(
      {required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    //
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      //
      List<ProductModle> productsList = [];
      //
      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModle.fromJson(data[i]));
      }
      return productsList;
    } else {
      throw Exception(
          'there is problem with status code ${response.statusCode}');
    }
  }
}
