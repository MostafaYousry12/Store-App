import 'package:store_app/helper/api.dart';

class Allcategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(uri: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
