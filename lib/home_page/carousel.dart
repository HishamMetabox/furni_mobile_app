import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int _currentIndex = 0;
  List<Map<String, String>>myCarouselwithText =[
  {
    'image': 'assets/images/carousel1.png',
    'text': 'Transform Your Space, Elevate Your Life',
  },
  {
    'image': 'assets/images/carousel2.png',
     'text': 'Transform Your Space, Elevate Your Life',
  },
  {
    'image': 'assets/images/carousel3.png',
    'text': 'Transform Your Space, Elevate Your Life',
  },
];





  @override
  Widget build(BuildContext context) {
    const int itemCount = 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Add padding OUTSIDE the rounded corners
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),

            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
              
                FlutterCarousel(
                  items: myCarouselwithText.map((item) {
    return Stack(
      fit: StackFit.expand,
      children: [

        /// IMAGE
        Image.asset(
          item['image']!,
          fit: BoxFit.cover,
        ),

        /// TEXT ON TOP
        Positioned(
          top: 18,
          left: 35,
          right: 5,
          child: Text(
            item['text']!,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }).toList(),
              
                  options: CarouselOptions(
                    height: 350,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    showIndicator: false,
                    onPageChanged: (index, reason) {
                      setState(() => _currentIndex = index);
                    },
                  ),

                  
                ),
              
                

                // ---- CUSTOM INDICATOR ----
                Positioned(
                  bottom: 14,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(itemCount, (i) {
                      final bool isActive = i == _currentIndex;

                      return Padding(
                        padding: EdgeInsets.only(
                          right: i == itemCount - 1 ? 0 : 8,
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 220),
                          width: isActive ? 26 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: isActive
                                ? const Color.fromARGB(255, 245, 244, 244)
                                : const Color.fromARGB(255, 246, 245, 245),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                 
  ]
  )
  ))]);}
        }
  

