import 'package:flutter/material.dart';

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
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Prix total',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Spacer(),
                          Text(
                            "\$556",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Frais de livraison',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Spacer(),
                          Text(
                            "\$556",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Tax (19%)',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Spacer(),
                          Text(
                            "\$556",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Total à payer',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Spacer(),
                          Text(
                            "\$556",
                            style: TextStyle(fontWeight: FontWeight.w900),
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
