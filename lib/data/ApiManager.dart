import 'dart:convert';

import 'package:e_commerce/data/model/categoriesResponse/CategoriesResponse.dart';
import 'package:http/http.dart' as http;

class ApiManger {
  static const String baseUrl = 'ecommerce.routemisr.com';

  Future<CategoriesResponse> getCategories() async{
    var url = Uri.https(baseUrl , "api/v1/categories");

    var response = await http.get(url);

    var categoriesResponse = CategoriesResponse.fromJson(
      jsonDecode(response.body)
    );
    return categoriesResponse;
  }
}
