import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cari Produk"),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ProductList(),
              SizedBox(height: 8),
              ProductList(),
            ],
          ),
        ));
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: Colors.blue,
        borderOnForeground: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Center(
                child: Text('Afiqi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
