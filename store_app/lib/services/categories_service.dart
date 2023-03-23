import 'dart:convert';

import 'package:http/http.dart';

import '../models/product_model.dart';
import '../helper/api.dart';

class CategoriesService {
  Future<List<ProductModle>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https:fakestoreapi.com/products/category/$categoryName');
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
