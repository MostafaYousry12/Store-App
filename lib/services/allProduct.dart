import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class Allproduct {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(uri: 'https://fakestoreapi.com/products');
    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromjson(data[i]),
      );
    }
    return productList;
  }
}
