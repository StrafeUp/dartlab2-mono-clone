import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DepositPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(icon: Icon(Icons.account_balance_wallet)),
            // Your widgets here
          ],
        ),
        backgroundColor: Color.fromRGBO(20, 52, 102, 01),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.blue, Colors.black])),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(margin: EdgeInsets.only(top: 0, bottom: 20),
                  child: Image(
                  image: AssetImage('assets/DepositCat.png'),
                  width: 250,
                  height: 250,
                ),),
                Text(
                  "Как открыть депозит?",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(margin: EdgeInsets.fromLTRB(20, 20, 20, 145),child: Text(
                  "Открыть депозит можно на срок от 1 до 12 месяцев в гривне, долларе или евро",
                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),),
                RawMaterialButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 20, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: null,
                  fillColor: Colors.white,
                  child: Text(
                    "Открыть новый депозит",
                    style: TextStyle(
                        color: Colors.blueGrey, fontSize: 15),
                  ),
                )
              ],
            )),
      ),
    );
  }

}