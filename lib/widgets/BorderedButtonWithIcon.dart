import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BorderedButtonWithIcon extends StatelessWidget {
  final IconData icon; //TODO switch to img or vector
  final String message;
  final Color color;

  BorderedButtonWithIcon(this.icon, this.message, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: 152,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Icon(icon, size: 20),
            ),
            Container(
                width: 76,
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }
}
