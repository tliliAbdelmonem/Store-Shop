import 'package:flutter/foundation.dart';
import '/models/cart_model.dart';
import '/models/product_model.dart';

class CartProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<CartModel> _data = [];
  double _totalPrice = 0;
  int _totalQuantity = 0;

  List<CartModel> get data => _data;
  double get totalPrice => _totalPrice;
  int get totalQuantity => _totalQuantity;

  addToCart(CartModel cart) {
    if (!isProductInCart(cart.product)) {
      _data.add(cart);
    } else {
      updateQuantityOfProduct(cart);
    }

    _totalPrice = getTotalPrice(_data);
    _totalQuantity = getTotalQuantity(_data);
    notifyListeners();
  }

  bool isProductInCart(ProductModel product) {
    return _data.map((item) => item.product.id).contains(product.id);
  }

  removeFromCart(ProductModel product) {
    _data.removeWhere((item) => item.product.id == product.id);
    _totalPrice = getTotalPrice(_data);
    _totalQuantity = getTotalQuantity(_data);
    notifyListeners();
  }

  updateQuantityOfProduct(CartModel cart) {
    List<CartModel> newData = _data.map((item) {
      if (item.product.id == cart.product.id) {
        item.quantity = cart.quantity;
        return item;
      }
      return item;
    }).toList();

    _data = newData;
    _totalPrice = getTotalPrice(newData);
    _totalQuantity = getTotalQuantity(newData);

    notifyListeners();
  }

  double getTotalPrice(List<CartModel> items) {
    return items.fold(
        0,
        (previous, current) =>
            previous + current.product.price * current.quantity);
  }

  int getTotalQuantity(List<CartModel> items) {
    return items.fold(0, (previous, current) => previous + current.quantity);
  }
}
