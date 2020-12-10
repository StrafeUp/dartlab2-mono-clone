import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab2/widgets/CardOperationsButton.dart';
import 'package:lab2/widgets/TransactionElement.dart';

class CardPage extends StatefulWidget {

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  double _balance = 47.04;

  void incrementBalance() {
    setState(() {
      print("pressed");
      _balance++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.deepPurple, Colors.orangeAccent])),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          top: 115, right: 50, bottom: 85, left: 50),
                      child: Column(
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                "$_balance \$",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 45),
                              )),
                          Container(
                              width: 200,
                              child: Text(
                                "Личные средства",
                                textAlign: TextAlign.left,
                              )),
                          Container(
                              width: 200,
                              child: Text(
                                "Кредитный лимит",
                                textAlign: TextAlign.left,
                              )),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Image(
                        image: AssetImage('assets/CardPart.png'),
                        width: 60,
                        height: 300,
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardOperationsButton(
                        Icons.arrow_downward, "Пополнить свою карту", incrementBalance),
                    CardOperationsButton(
                        Icons.subdirectory_arrow_right, "Перевести на карту", incrementBalance),
                    CardOperationsButton(Icons.plus_one, "Другие платежи", incrementBalance)
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.white),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
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
                              child: Icon(
                                Icons.show_chart,
                                size: 25,
                              ),
                            ),
                            Text(
                              "Сегодня",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.black54,
                                        style: BorderStyle.solid)),
                                child: Icon(Icons.search)),
                          ],
                        ),
                      ),
                      Container(
                          height: 440,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: [
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                              TransactionElement(
                                  "Магазин", "Продукты и супермаркеты", -13.30),
                            ],
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
