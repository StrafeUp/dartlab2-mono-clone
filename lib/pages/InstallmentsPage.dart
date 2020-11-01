import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstallmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(icon: Icon(Icons.account_balance_wallet)),
            IconButton(icon: Icon(Icons.info_outline), onPressed: null)
            // Your widgets here
          ],
        ),
        backgroundColor: Color.fromRGBO(6, 197, 93, 1),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromRGBO(3, 131, 116, 1),
              Color.fromRGBO(6, 197, 93, 1)
            ])),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 20),
              child: Image(
                image: AssetImage('assets/PayCat.png'),
                width: 250,
                height: 250,
              ),
            ),
            Text(
              "Доступный лимит рассрочки",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "1 000.00 \$",
                style: new TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                width: 310,
                child: Text(
                  "Вы можете оформить рассрочку в любом наземном или интернет-магазине в несколько нажатий. "
                  "Комиссия - всего 1.9% от суммы покупки в месяц",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                )),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: RawMaterialButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: null,
                fillColor: Colors.white,
                child: Text(
                  "Оформить рассрочку",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
