import 'package:belajarflutter/ui/produk_page.dart';

import 'hello_world.dart';
import 'column_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      home: ProdukPage(),
    );
  }
}