import 'package:flutter/material.dart';

import '../widgets/action_product.dart';
import '../widgets/list_product.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List _namesData = [
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra",
    "Afiqi",
    "Putra"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            const SizedBox(
              width: 400,
              height: 312,
              child: AspectRatio(
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
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 5,
                      color: Colors.black12,
                      blurStyle: BlurStyle.normal,
                      blurRadius: 7,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: 400,
                height: 70,
                child: const ActionProduct(),
              ),
            ),
          ]),
          const SizedBox(height: 16),
          ListProduct(namesData: _namesData),
        ],
      ),
    );
  }
}
