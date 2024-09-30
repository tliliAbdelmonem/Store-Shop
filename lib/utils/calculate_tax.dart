import 'package:store_shop/constants.dart';

double calculateTax(double price) {
  return ((price + deliveryCosts) * taxPercentage) / 100;
}
