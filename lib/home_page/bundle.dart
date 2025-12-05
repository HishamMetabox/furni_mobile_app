import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bundle extends StatelessWidget {
  const Bundle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // --- Container 1 ---
            Container(
              height: 450,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/living_room.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 10,
                    child: Text(
                      'Living Room',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 24,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 48,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Shop now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 243, 245, 247),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/bedroom.png',
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: Text(
                      'Bedroom',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 24, 24, 24),
                        fontSize: 24,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 125,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Shop now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 21, 21, 21),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 243, 245, 247),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/kitchen0.png',
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: Text(
                      'Kitchen',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 25, 24, 24),
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 125,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Shop now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 17, 16, 16),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), //3
          ],
        ),
      ),
    );
  }
}
