import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '/pages/cart/widgets/cart_item_widget.dart';
import '/pages/cart/widgets/payment_summary_widget.dart';
import '/models/cart_model.dart';
import '/providers/cart_provider.dart';
import '/shared_widgets/app_bottom_navigation_bar_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int quantity = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CartModel> carts = context.watch<CartProvider>().data;
    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarWidget(),
        appBar: AppBar(
          toolbarHeight: 55,
          backgroundColor: Theme.of(context).colorScheme.surface,
          centerTitle: true,
          title: const Text(
            "Panier",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: carts.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: carts.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(
                                  height: 8,
                                  child:
                                      Image.asset('assets/images/divider.png')),
                          itemBuilder: (BuildContext context, int index) {
                            CartModel cart = carts[index];
                            return CartItemWidget(
                              cart: cart,
                            );
                          }),
                    ),
                    const PaymentSummaryWidget(),
                  ],
                ),
              )
            : Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/cart-empty.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
                    width: 64,
                    height: 64,
                  ),
                  Text(
                    "Votre panier est vide",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              )));
  }
}
