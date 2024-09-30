import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/constants.dart';
import '/providers/cart_provider.dart';
import '/utils/calculate_tax.dart';
import '/utils/calculate_total_to_payed.dart';

class PaymentSummaryWidget extends StatefulWidget {
  const PaymentSummaryWidget({super.key});

  @override
  State<PaymentSummaryWidget> createState() => _PaymentSummaryWidgetState();
}

class _PaymentSummaryWidgetState extends State<PaymentSummaryWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: double.infinity,
      child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Récapitulatif du paiement",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Prix total',
                            style: TextStyle(color: Colors.black54),
                          ),
                          const Spacer(),
                          Text(
                            "\$${context.watch<CartProvider>().totalPrice}",
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Frais de livraison',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Spacer(),
                          Text(
                            "\$$deliveryCosts",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Tax ($taxPercentage%)',
                            style: TextStyle(color: Colors.black54),
                          ),
                          const Spacer(),
                          Text(
                            "\$${calculateTax(context.watch<CartProvider>().totalPrice)}",
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Total à payer',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          const Spacer(),
                          Text(
                            "\$${calculateTotalToPayed(context.watch<CartProvider>().totalPrice)}",
                            style: const TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black45,
                      width: 0.5,
                    ),
                  ),
                  child: const Text(
                    'Payer',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
