import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:furni_project/widgets/footer/footer.dart';
import 'package:furni_project/Header/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Header());
  }
=======
import 'package:furni_project/Items/counter.dart';
import 'package:furni_project/Items/product.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: ProductWidget())));
>>>>>>> refs/remotes/origin/main
}
