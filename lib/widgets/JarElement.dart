import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JarElement extends StatelessWidget {
  final String title;
  final double sumCurrent;
  final double sumMaximum;

  JarElement(this.title, this.sumCurrent, this.sumMaximum);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(
        bottom: BorderSide(width: 1, color: Colors.black12)
      )),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.restore_from_trash),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ]),
              Row(
                children: [Text("Накоплено")],
              ),
              Row(
                children: [Text("Желаемая сумма")],
              ),
            ],
          ),
          Column(
            children: [
              Row(children: [Text("")]),
              Row(
                children: [
                  Text("$sumCurrent \$",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: [
                  Text("$sumMaximum \$",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
