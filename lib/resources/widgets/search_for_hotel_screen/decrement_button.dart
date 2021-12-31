import 'package:flutter/material.dart';

class DecrementButton extends StatelessWidget {
  final Function onPressed;
  const DecrementButton({Key? key,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        // height: 28,
        // width: 28,
        padding: EdgeInsets.all(4),

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(2.0))),
        child: Center(
          child: Icon(
            Icons.remove,
            size: 20,
          ),
        ),
      ),
    );
  }
}
