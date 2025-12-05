import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ...existing code...
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),

          // center the logo
          SvgPicture.asset(
            'assets/images/furniLogo.svg',
            height: 25,
            semanticsLabel: 'Furni Logo',
            placeholderBuilder: (context) => const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
          Spacer(),
          // Right side icons
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart_checkout,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(
                  Icons.person_outline_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// ...existing code...