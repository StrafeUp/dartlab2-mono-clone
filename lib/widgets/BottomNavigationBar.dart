import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab2/pages/CardPage.dart';
import 'package:lab2/pages/DepositPage.dart';
import 'package:lab2/pages/InstallmentsPage.dart';
import 'package:lab2/pages/JarPage.dart';
import 'package:lab2/pages/UserPage.dart';

class BottomBarExample extends StatefulWidget {
  @override
  _BottomBarExampleState createState() => new _BottomBarExampleState();
}

class _BottomBarExampleState extends State<BottomBarExample> {
  int _page = 0;
  PageController _pageViewController;

  @override
  void initState() {
    _pageViewController = new PageController(
      initialPage: _page,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: _page,
        onTap: (index) {
          this._pageViewController.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: new Icon(Icons.credit_card), title: new Text("Карта")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.pie_chart), title: new Text("Рассрочка")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today), title: new Text("Депозит")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.restore_from_trash),
              title: new Text("Банка")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.arrow_forward), title: new Text("Ещё")),
        ],
      ),
      body: new PageView(
        controller: _pageViewController,
        onPageChanged: (newPage) {
          setState(() {
            this._page = newPage;
          });
        },
        children: <Widget>[
          CardPage(),
          InstallmentsPage(),
          DepositPage(),
          JarPage(),
          UserPage(),
        ],
      ),
    );
  }
}
