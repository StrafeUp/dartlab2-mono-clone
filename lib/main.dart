import 'package:flutter/material.dart';
import 'package:lab2/pages/DepositOptions.dart';
import 'file:///C:/Users/bohdankol/AndroidStudioProjects/lab2/lib/widgets/BottomNavigationBar.dart';
import 'package:provider/provider.dart';
import 'model/AppModel.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final model = Provider.of<AppModel>(context, listen: false);
     model.loadAccountData();
     model.loadCurrencies();

     return MaterialApp(
      initialRoute: '/',
      routes: {
        '/DepositOptions': (context) => DepositOptions(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomBarExample());
  }
}
