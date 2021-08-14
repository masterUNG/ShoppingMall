import 'dart:convert';

class ProductModel {
  final String id;
  final String idSeller;
  final String nameSeller;
  final String name;
  final String price;
  final String detail;
  final String images;
  ProductModel({
    required this.id,
    required this.idSeller,
    required this.nameSeller,
    required this.name,
    required this.price,
    required this.detail,
    required this.images,
  });

  ProductModel copyWith({
    String? id,
    String? idSeller,
    String? nameSeller,
    String? name,
    String? price,
    String? detail,
    String? images,
  }) {
    return ProductModel(
      id: id ?? this.id,
      idSeller: idSeller ?? this.idSeller,
      nameSeller: nameSeller ?? this.nameSeller,
      name: name ?? this.name,
      price: price ?? this.price,
      detail: detail ?? this.detail,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idSeller': idSeller,
      'nameSeller': nameSeller,
      'name': name,
      'price': price,
      'detail': detail,
      'images': images,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      idSeller: map['idSeller'],
      nameSeller: map['nameSeller'],
      name: map['name'],
      price: map['price'],
      detail: map['detail'],
      images: map['images'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, idSeller: $idSeller, nameSeller: $nameSeller, name: $name, price: $price, detail: $detail, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.id == id &&
      other.idSeller == idSeller &&
      other.nameSeller == nameSeller &&
      other.name == name &&
      other.price == price &&
      other.detail == detail &&
      other.images == images;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      idSeller.hashCode ^
      nameSeller.hashCode ^
      name.hashCode ^
      price.hashCode ^
      detail.hashCode ^
      images.hashCode;
  }
}
