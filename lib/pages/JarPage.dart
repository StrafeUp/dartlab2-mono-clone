import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab2/widgets/JarElement.dart';

class JarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Colors.pink, Colors.pinkAccent])),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(30),
                child: Text(
                  "В ваших гривневых банках",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Text(
                "144.30 \$",
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: RawMaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: null,
                  fillColor: Colors.white,
                  child: Text(
                    "Создать банку",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
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
                        padding: EdgeInsets.only(left: 5, top: 5, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Мои банки",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 440,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: [
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                              JarElement("Title", 0.0, 1300),
                            ],
                          ))
                    ],
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
