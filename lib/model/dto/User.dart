class User {
  final String userName;
  final double userBalance;

  User({
    this.userName,
    this.userBalance,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userName: json['username'] as String,
      userBalance: json['balance'] as double,
    );
  }
}
