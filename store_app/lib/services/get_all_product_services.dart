import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModle>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    //
    List<dynamic> data = jsonDecode(response.body);
    //
    List<ProductModle> productsList = [];
    //
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModle.fromJson(data[i]));
    }
    return productsList;
  }
}
