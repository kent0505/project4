class Transport {
  int id;
  String type;
  String condition;
  String price;
  String rentTime;
  String who;
  String comment;
  bool cashPayment;

  Transport({
    required this.id,
    required this.type,
    required this.condition,
    required this.price,
    required this.rentTime,
    required this.who,
    required this.comment,
    required this.cashPayment,
  });
}
