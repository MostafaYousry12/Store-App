import 'package:store_app/helper/api.dart';

class Addproduct {
  Future<dynamic> addProduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required String Category,
  }) async {
    Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': Category,
      },
    );
  }
}
