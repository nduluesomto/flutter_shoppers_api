import 'package:flutter/material.dart';
import 'package:flutter_shopping_api_app/services/api_service.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class AppController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var productListTemp = await ApiService.getProducts();
      if (productListTemp != null) {
        productList(productListTemp);
      }
    } catch (e) {
      // print(e.toString());
      Get.to(SnackBar(content: Text(e.toString())));
    } finally {
      isLoading(false);
    }
  }
}
