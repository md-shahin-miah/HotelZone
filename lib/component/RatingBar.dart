import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {

  int num = 0;

  RatingBar({required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Row(
        children: [
          ...List.generate(
              num,
                  (index) =>
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ))
        ],
      ),
    );
  }
}
