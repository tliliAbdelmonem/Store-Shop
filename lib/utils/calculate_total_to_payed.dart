import 'package:store_shop/constants.dart';
import 'package:store_shop/utils/calculate_tax.dart';

double calculateTotalToPayed(double price) {
  return price + deliveryCosts + calculateTax(price);
}
