import 'package:flutter/material.dart';
import 'package:furni_mobile_app/product/Product_page.dart';
import 'package:furni_mobile_app/models/product_model.dart';
import 'package:furni_mobile_app/product/widget/rating_star.dart';
import 'package:furni_mobile_app/home_page/toggle_favorite.dart';

class NewProductCard extends StatelessWidget {
  const NewProductCard({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    final ImageProvider img = item.imageUrl.startsWith('http')
        ? NetworkImage(item.imageUrl)
        : AssetImage(item.imageUrl) as ImageProvider;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProductPage(
                  onQuantityChanged: (int _) {},
                  product_id: item.id,
                ),
              ),
            );
          },
          child: Container(
            width: 260,
            height: 290,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 236, 239, 239),
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: img, fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 13,
                  right: 10,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: FavoriteToggleButton(),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Column(
                    children: [
                      _badge(
                        text: 'New',
                        bg: Colors.white,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 6),
                      _badge(
                        text: '-50%',
                        bg: Colors.green,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 13,
                  left: 10,
                  right: 10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 6, 53, 107),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingStar(initialRating: 0),
              const SizedBox(height: 4),
              Text(
                item.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Rs ${item.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _badge({
    required String text,
    required Color bg,
    required Color color,
  }) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
