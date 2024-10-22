import 'package:flutter/material.dart';
import 'package:mobile_web_service_praktik/models/product_model.dart';
import 'package:mobile_web_service_praktik/widgets/product.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({
    super.key,
    required this.listProduct,
  });

  final List<ProductModel> listProduct;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: listProduct.length,
        itemBuilder: (context, index) {
          return Product(productData: listProduct[index]);
        },
      ),
    );
  }
}
