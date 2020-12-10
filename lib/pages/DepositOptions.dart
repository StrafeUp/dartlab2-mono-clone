import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DepositOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // Your widgets here
          ],
        ),
        backgroundColor: Color.fromRGBO(32, 49, 77, 1),
        elevation: 0,
      ),
      body: Container(
        width: 600,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromRGBO(50, 126, 184, 1),
                  Color.fromRGBO(27, 30, 49, 1),
                ])),
        child: Column(
          children: [
            Container(
              child: Text("Выбрать депозит",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: 350,
              height: 215,
              decoration: BoxDecoration(
                color: Color.fromRGBO(68, 92, 120, 0.75),
                border: Border.all(
                  width: 1,
                  color: Color.fromRGBO(68, 99, 430, 1),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 15),
                child: Column(children: [
                  Image(
                    image: AssetImage('assets/dep3.png'),
                    width: 200,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      "Стандартный депозит",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 350,
              height: 215,
              decoration: BoxDecoration(
                color:  Color.fromRGBO(68, 92, 120, 0.75),
                border: Border.all(
                  width: 1,
                  color: Color.fromRGBO(68, 99, 430, 1),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 15),
                child: Column(children: [
                  Image(
                    image: AssetImage('assets/dep4.png'),
                    width: 200,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      "Депозит IRON",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        }
      ),*/
    );
  }
}
