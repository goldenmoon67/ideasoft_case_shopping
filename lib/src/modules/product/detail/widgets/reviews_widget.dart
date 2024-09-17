import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar(
          filledIcon: Icons.star,
          emptyIcon: Icons.star_border,
          onRatingChanged: (value) => debugPrint('$value'),
          initialRating: 4,
          maxRating: 5,
          filledColor: Colors.amber,
          size: 20,
        ),
        const SizedBox(width: 10),
        const Text(
          '4.3',
          style: TextStyle(
              color: Colors.amber, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 10),
        const Text(
          '(2193 Değerlendirme)',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
