import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionElement extends StatelessWidget {
  final String shopName;
  final String category;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 1,
                      color: Colors.black54,
                      style: BorderStyle.solid)),
              child: Icon(Icons.picture_in_picture_alt, size: 35,),
            ),
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  shopName,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  category,
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            )),
            Text(price.toString())
          ],
        ));
  }

  TransactionElement(this.shopName, this.category, this.price);
}
