import 'package:flutter/material.dart';
import 'package:mobile_web_service_praktik/screen/product_screen.dart';

import 'screen/navbar_screen.dart';
import 'screen/product/product_baju.dart';
import 'screen/product/product_celana.dart';
import 'screen/product/product_sepatu.dart';
import 'screen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Mobile & Web Services Praktik',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/profile": (context) => const ProfilePage(),
        "/baju": (context) => const ProductBaju(),
        "/celana": (context) => const ProductCelana(),
        "/sepatu": (context) => const ProductSepatu(),
        "/product": (context) => const ProductPage(),
      },
      home: const Navigasi(),
    );
  }
}
