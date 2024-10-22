import 'package:flutter/material.dart';

class ProductBaju extends StatelessWidget {
  const ProductBaju({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk Baju"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/celana");
                },
                child: const Text(
                  "Lihat Produk Celana",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/sepatu");
                },
                child: const Text(
                  "Lihat Produk Sepatu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
