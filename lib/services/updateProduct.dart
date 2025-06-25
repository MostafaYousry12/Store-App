import 'package:store_app/helper/api.dart';

class UpdateproductServices {
  Future<dynamic> updateProduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required int id,
    required String Category,
  }) async {
    Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': Category,
      },
    );
  }
}
