import '/models/product_model.dart';

class CartModel {
  int quantity;
  final ProductModel product;

  CartModel({
    required this.quantity,
    required this.product,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      quantity: json['quantity'] ?? 0,
      product: ProductModel.fromJson(json['name']),
    );
  }

  @override
  String toString() {
    return product.name.toLowerCase();
  }
}
