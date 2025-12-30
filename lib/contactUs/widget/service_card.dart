import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String text;
  final String iconUrl;

  const ServiceCard({
    super.key,
    required this.title,
    required this.text,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(243, 245, 247, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.network(iconUrl, width: 48, height: 48),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
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
  }
}
