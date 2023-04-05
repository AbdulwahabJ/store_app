import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:store_app/widgets/custom_button.dart';

class UpdateProductScreen extends StatefulWidget {
  UpdateProductScreen({super.key});

  static String id = 'update product';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  //
  String? productName;

  String? desc;

  String? image;

  String? price;

  bool isLoding = false;
  //
  @override
  Widget build(BuildContext context) {
    //receiving data from previous screen (argument)
    ProductModle product =
        ModalRoute.of(context)!.settings.arguments as ProductModle;
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'update product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),

                CustomTextField(
                  textHint: 'product name',
                  onChanged: (data) {
                    productName = data;
                  },
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  textHint: 'descripttion',
                  onChanged: (data) {
                    desc = data;
                  },
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  textHint: 'price',
                  onChanged: (data) {
                    price = data;
                  },
                  inputType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                    textHint: 'image',
                    onChanged: (data) {
                      image = data;
                    }),
                const SizedBox(height: 50),
                //
                CustomButton(
                  text: "update",
                  onTap: () {
                    isLoding = true;
                    setState(() {});
                    try {
                      updateProduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoding = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModle product) {
    UpdateProductServices().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      description: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
      price: price == null ? product.price.toString() : price!,
      category: product.category,
    );
  }
}
