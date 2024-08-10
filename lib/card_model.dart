class Card {
  late final int? id;
  final String? productId;
  final String? productName;
  final int? initialPrice;
  final int? productPrince;
  final int? quantity;
  final String? unitTag;
  final String? image;

  Card(
      {this.id,
      this.productId,
      this.productName,
      this.initialPrice,
      this.productPrince,
      this.quantity,
      this.unitTag,
      this.image});

  Card.formMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res['productId'],
        productName = res['productName'],
        initialPrice = res['initialPrice'],
        productPrince = res['productPrice'],
        quantity = res['quantity'],
        unitTag = res['unitTag'],
        image = res['image'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'initialPrice': initialPrice,
      'productPrice': productPrince,
      'quantity': quantity,
      'unitTag': unitTag,
      'image': image
    };
  }
}
