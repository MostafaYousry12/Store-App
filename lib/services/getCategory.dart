import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class Getcategory {
  Future<List<ProductModel>> getCategory({required categoryName}) async {
    List<dynamic> data = await Api()
        .get(uri: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromjson(data[i]),
      );
    }
    return productList;
  }
}
