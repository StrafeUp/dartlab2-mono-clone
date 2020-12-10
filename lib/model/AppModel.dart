import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lab2/model/dto/CurrencyRate.dart';

import 'package:lab2/model/dto/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModel extends ChangeNotifier {
  final String userServerApi =
      "https://api.jsonbin.io/b/5fd256a782e9306ae6ffe9e2";
  final String usdServerApi =
      "https://api.jsonbin.io/b/5fd25bc3bef8b7699e57ddc6";
  final String euroServerApi =
      "https://api.jsonbin.io/b/5fd2591e82e9306ae6ffeacf";

  double userBalance;
  String userName;

  String usd;
  String euro;

  loadAccountData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var balance = preferences.get("user.balance");
    var name = preferences.get("user.username");
    print("User loaded");
    if (balance == null || name == null) {
      User user = await getUserFromApi();
      this.userName = user.userName;
      this.userBalance = user.userBalance;

      preferences.setDouble("user.balance", this.userBalance);
      preferences.setString("user.username", this.userName);
    } else {
      this.userBalance = balance;
      this.userName = name;
    }
    notifyListeners();
  }

  loadCurrencies() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var usdRate = preferences.get("rate.usd");
    var euroRate = preferences.get("rate.euro");
    print("Currencies loaded");

    if (usdRate == null || euroRate == null) {
      CurrencyRate usdt = await getRateFromApi(isUsd: true);
      CurrencyRate eurot = await getRateFromApi(isUsd: false);
      this.usd = usdt.toString();
      this.euro = eurot.toString();

      preferences.setString("rate.usd", this.usd.toString());
      preferences.setString("rate.euro",this.euro.toString());
    }else{
      this.usd = usdRate;
      this.euro = euroRate;
    }
    notifyListeners();
  }

  Future<User> getUserFromApi() async {
    Response response = await get(userServerApi);
    dynamic parsed = json.decode(response.body);

    print(parsed);

    return User.fromJson(parsed);
  }

  Future<CurrencyRate> getRateFromApi({bool isUsd}) async {
    String api = isUsd ? usdServerApi : euroServerApi;

    Response response = await get(api);
    dynamic parsed = json.decode(response.body);

    print(parsed);

    return CurrencyRate.fromJson(parsed);
  }
}
