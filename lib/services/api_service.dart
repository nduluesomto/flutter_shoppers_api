import 'package:flutter_shopping_api_app/models/products_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  static const url =
      "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

  static Future<List<ProductModel>?> getProducts() async {
    var response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
