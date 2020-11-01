import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListItemWithIconText extends StatelessWidget {
  final IconData icon; //TODO switch to img or vector
  final String message;
  final Color color;

  ListItemWithIconText(this.icon, this.message, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Icon(icon, size: 24),
            ),
          ),
          Text(message, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
