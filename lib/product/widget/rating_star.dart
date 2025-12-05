import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  final int maxRating;
  final double size;
  final Function(int)? onRatingSelected;

  const RatingStar({
    super.key,
    this.maxRating = 5,
    this.size = 13,
    this.onRatingSelected,
  });

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  int currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.maxRating, (index) {
        final starIndex = index + 1;

        return GestureDetector(
          onTap: () {
            setState(() {
              currentRating = starIndex;
            });

            if (widget.onRatingSelected != null) {
              widget.onRatingSelected!(currentRating);
            }
          },
          onDoubleTap: () {
            setState(() {
              currentRating = 0;
            });

            if (widget.onRatingSelected != null) {
              widget.onRatingSelected!(0);
            }
          },

          child: Icon(
            starIndex <= currentRating
                ? Icons.star_rounded
                : Icons.star_border_rounded,
            size: widget.size,
            color: const Color.fromARGB(255, 52, 55, 57),
          ),
        );
      }),
    );
  }
}
