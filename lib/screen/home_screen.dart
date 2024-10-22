import 'package:flutter/material.dart';
import 'package:mobile_web_service_praktik/models/product_model.dart';

import '../widgets/action_product.dart';
import '../widgets/list_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: const AspectRatio(
                aspectRatio: 3,
                child: Image(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/images/home.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: const ActionProduct(),
              ),
            ),
          ]),
          ListProduct(listProduct: listProduct)
        ],
      ),
    );
  }
}
