import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Transport {
  @HiveField(0)
  int id;
  @HiveField(1)
  String type;
  @HiveField(2)
  String count;
  @HiveField(3)
  String condition;
  @HiveField(4)
  String price;
  @HiveField(5)
  String rentTime;
  @HiveField(6)
  String who;
  @HiveField(7)
  String comment;
  @HiveField(7)
  bool cashPayment;

  Transport({
    required this.id,
    required this.type,
    required this.count,
    required this.condition,
    required this.price,
    required this.rentTime,
    required this.who,
    required this.comment,
    required this.cashPayment,
  });
}

class TransportAdapter extends TypeAdapter<Transport> {
  @override
  final typeId = 0;

  @override
  Transport read(BinaryReader reader) {
    return Transport(
      id: reader.read(),
      type: reader.read(),
      count: reader.read(),
      condition: reader.read(),
      price: reader.read(),
      rentTime: reader.read(),
      who: reader.read(),
      comment: reader.read(),
      cashPayment: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Transport obj) {
    writer.write(obj.id);
    writer.write(obj.type);
    writer.write(obj.count);
    writer.write(obj.condition);
    writer.write(obj.price);
    writer.write(obj.rentTime);
    writer.write(obj.who);
    writer.write(obj.comment);
    writer.write(obj.cashPayment);
  }
}
