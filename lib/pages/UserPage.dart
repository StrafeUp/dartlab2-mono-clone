import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab2/model/AppModel.dart';
import 'package:lab2/widgets/BorderedButtonWithIcon.dart';
import 'package:lab2/widgets/ListItemWithIconText.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppModel>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        actions: <Widget>[Icon(Icons.settings)],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.black54, Colors.lightBlue])),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 20, 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    Text(
                      model.userName,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(0, 0, 0, 0.3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(
                                Icons.euro_symbol,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              children: [
                                Row(children: [
                                  Text("Доллар США",
                                      style: TextStyle(color: Colors.grey))
                                ]),
                                Row(
                                  children: [
                                    Text(
                                      model.usd.toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.euro_symbol, color: Colors.grey),
                            Column(
                              children: [
                                Row(children: [
                                  Text("Евро",
                                      style: TextStyle(color: Colors.grey))
                                ]),
                                Row(
                                  children: [
                                    Text(
                                      model.euro.toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BorderedButtonWithIcon(
                        Icons.message, "Служба поддержки", Colors.lightBlue),
                    BorderedButtonWithIcon(
                        Icons.view_list, "Тарифы", Colors.lightGreen),
                    BorderedButtonWithIcon(
                        Icons.question_answer, "Частые вопросы", Colors.grey),
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
                        ),
                      ),
                      Container(
                          height: 307,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: [
                              ListItemWithIconText(Icons.card_giftcard,
                                  "Заработать 1000 грн кешбека", Colors.red),
                              ListItemWithIconText(
                                  Icons.code, "Сканер QR-кода", Colors.blue),
                              ListItemWithIconText(
                                  Icons.alarm,
                                  "Напоминания \nПеревод и пополнение мобильного",
                                  Colors.pinkAccent),
                              ListItemWithIconText(Icons.directions_car,
                                  "ОСАГО\nЭлектронный  полис", Colors.purple),
                            ],
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
