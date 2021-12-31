import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  final Function onPressed;
  const IncrementButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        padding: EdgeInsets.all(4),

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(2.0))),
        child: Center(
          child: Icon(
            Icons.add,
            size: 20,
          ),
        ),
      ),
    );
  }
}
