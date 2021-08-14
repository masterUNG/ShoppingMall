import 'package:flutter/material.dart';
import 'package:shoppingmall/models/product_model.dart';

class EditProduct extends StatefulWidget {
  final ProductModel productModel;
  const EditProduct({Key? key, required this.productModel}) : super(key: key);

  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  ProductModel? productModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productModel = widget.productModel;
    print('## name Edit ==> ${productModel!.name}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
    );
  }
}
