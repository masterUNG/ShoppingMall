import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class WalletModel {
  final String id;
  final String idBuyer;
  final String datePay;
  final String money;
  final String pathSlip;
  final String status;
  WalletModel({
    required this.id,
    required this.idBuyer,
    required this.datePay,
    required this.money,
    required this.pathSlip,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idBuyer': idBuyer,
      'datePay': datePay,
      'money': money,
      'pathSlip': pathSlip,
      'status': status,
    };
  }

  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      id: (map['id'] ?? '') as String,
      idBuyer: (map['idBuyer'] ?? '') as String,
      datePay: (map['datePay'] ?? '') as String,
      money: (map['money'] ?? '') as String,
      pathSlip: (map['pathSlip'] ?? '') as String,
      status: (map['status'] ?? '') as String,
    );
  }

  factory WalletModel.fromJson(String source) => WalletModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
