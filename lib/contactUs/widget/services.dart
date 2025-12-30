import 'package:flutter/material.dart';
// import 'package:furni_mobile_app/contactUs/widget/service_card.dart';
import 'package:furni_mobile_app/services/contactus_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: ContactPageService.fetchBlocks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return const SizedBox();
        }

        final blocks = snapshot.data!;

        final allCards = blocks
            .where((b) => b['__component'] == 'blocks.card')
            .toList();

        /// take ONLY last 4 cards (services)
        final serviceCards = allCards.length >= 4
            ? allCards.sublist(allCards.length - 4)
            : allCards;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: serviceCards.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final card = serviceCards[index];

            final String title = card['title'] ?? '';
            final String text = card['text'] ?? '';

            final String? iconUrl = card['icon'] != null
                ? 'http://159.65.15.249:1337${card['icon']['url']}'
                : null;

            return Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(243, 245, 247, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.only(
                top: 30,
                left: 25,
                right: 25,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (iconUrl != null)
                    SvgPicture.network(
                      iconUrl,
                      width: 48,
                      placeholderBuilder: (_) => const SizedBox(height: 48),
                    ),

                  const SizedBox(height: 16),

                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      color: const Color.fromRGBO(108, 114, 117, 1),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
