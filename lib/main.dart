import 'package:flutter/material.dart';
import 'package:furni_mobile_app/Header/header.dart';
import 'package:furni_mobile_app/contactUs/contactus.dart';
import 'package:furni_mobile_app/contactUs/widget/location.dart';
import 'package:furni_mobile_app/data/data_cons.dart';
import 'package:furni_mobile_app/data/dummy_data.dart';
import 'package:furni_mobile_app/navbar/navbar.dart';
import 'package:furni_mobile_app/product/Product_page.dart';
import 'package:furni_mobile_app/screens/cart_screen.dart';
import 'package:furni_mobile_app/screens/home_screen.dart';
import 'package:furni_mobile_app/shop/shopPage.dart';
import 'package:furni_mobile_app/shop/widget/filternav.dart';
import 'package:furni_mobile_app/shop/widget/grid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
    )
  ),
     home:
     Scaffold(
  appBar: AppBar(
      title: Header(),
  ),
  body: SafeArea(child: Contactus()),
  bottomNavigationBar: SizedBox(height:90, child:GlassFloatingNavBar(), ) 
      ),
  ),
);
}


