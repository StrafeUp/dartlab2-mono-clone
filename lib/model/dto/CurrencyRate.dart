class CurrencyRate{
  final String currency;
  final double buy;
  final double sell;


  CurrencyRate({this.currency, this.buy, this.sell});

  factory CurrencyRate.fromJson(Map<String, dynamic> json) {
    return CurrencyRate(
      currency: json['currency'] as String,
      buy: json['buy'] as double,
      sell: json['sell'] as double,
    );
  }

  @override
  String toString() {
    return "$buy / $sell";
  }
}