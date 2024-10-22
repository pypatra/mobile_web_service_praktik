import 'package:flutter/material.dart';

class ProductCelana extends StatelessWidget {
  const ProductCelana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk Celana"),
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
                  Navigator.of(context).pushNamed("/baju");
                },
                child: const Text(
                  "Lihat Produk Baju",
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
