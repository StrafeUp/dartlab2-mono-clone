import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardOperationsButton extends StatelessWidget {
  final IconData icon; //TODO switch to img or vector
  final String message;
  final Function incrementBalance;

  CardOperationsButton(
    this.icon,
    this.message,
    this.incrementBalance,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        incrementBalance();
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(7),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Icon(icon, size: 40),
            ),
            Container(
              width: 80,
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
