import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/updateProduct.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_input.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  static String id = 'UpdatePage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  double? price;

  bool? isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading!,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Update Page"),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomInput.CustomFormInput(
                  hintText: "Product Name",
                  onChange: (data) {
                    productName = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInput.CustomFormInput(
                  hintText: "description",
                  onChange: (data) {
                    desc = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInput.CustomFormInput(
                  hintText: "Price",
                  inputType: TextInputType.number,
                  onChange: (data) {
                    price = double.tryParse(data);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInput.CustomFormInput(
                  hintText: "image",
                  onChange: (data) {
                    image = data;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  ButtomName: "Save",
                  onTap: () async {
                    isLoading = true;
                    try {
                      await updateproduct(product);

                      print("successful");
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateproduct(ProductModel product) async {
    await UpdateproductServices().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null
            ? product.price.toDouble()
            : double.tryParse(price! as String) ?? product.price.toDouble(),
        description: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        Category: product.category);
  }
}
