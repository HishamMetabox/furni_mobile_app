import 'package:flutter/material.dart';
import 'package:furni_mobile_app/Header/header.dart';
import 'package:furni_mobile_app/home_page/carousel.dart';
import 'package:furni_mobile_app/home_page/bundle.dart';
import 'package:furni_mobile_app/home_page/new_arrival.dart';
import 'package:furni_mobile_app/home_page/about_us.dart';
import 'package:furni_mobile_app/contactUs/widget/services.dart';
import 'package:furni_mobile_app/navbar/navbar.dart';
import 'package:furni_mobile_app/product/product_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('🏠 HomeScreen building...');

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 1,
        flexibleSpace: SafeArea(
          child: Header(
            onProductTap: (productId) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    product_id: productId,
                    onQuantityChanged: (qty) {},
                  ),
                ),
              );
            },
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ TEST CONTAINER - You should see this green box
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'TEST - If you see this, body is working',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Try each widget one by one
            _safeWidget(const CarouselWidget(), 'CarouselWidget'),
            const SizedBox(height: 20),

            _safeWidget(const Bundle(), 'Bundle'),
            const SizedBox(height: 20),

            _safeWidget(const NewArrival(), 'NewArrival'),
            const SizedBox(height: 20),

            _safeWidget(const AboutUsSection(), 'AboutUsSection'),
            const SizedBox(height: 20),

            _safeWidget(const Services(), 'Services'),
          ],
        ),
      ),

      bottomNavigationBar: const GlassFloatingNavBar(),
    );
  }

  // ✅ Wrap each widget to catch errors
  Widget _safeWidget(Widget child, String name) {
    try {
      print('🔷 Rendering: $name');
      return child;
    } catch (e, stackTrace) {
      print('❌ Error in $name: $e');
      print('Stack trace: $stackTrace');
      return Container(
        padding: const EdgeInsets.all(16),
        color: Colors.red[100],
        child: Column(
          children: [
            Text(
              'Error in $name',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 8),
            Text(e.toString(), style: const TextStyle(fontSize: 12)),
          ],
        ),
      );
    }
  }
}
