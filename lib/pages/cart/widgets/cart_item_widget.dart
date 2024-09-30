import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '/models/cart_model.dart';
import '/providers/cart_provider.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({super.key, required this.cart});
  final CartModel cart;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    CartModel cart = widget.cart;

    return Container(
        margin: EdgeInsets.zero,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Theme.of(context).colorScheme.outline,
                  Theme.of(context).colorScheme.outline.withOpacity(0.3),
                ],
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/${cart.product.photo}"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 120,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cart.product.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<CartProvider>()
                            .removeFromCart(cart.product);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/cart-minus.svg',
                        colorFilter:
                            const ColorFilter.mode(Colors.red, BlendMode.srcIn),
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Size: M | color: red",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.black54),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 120,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80.0,
                      height: 30.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (cart.quantity - 1 > 0) {
                                  context.read<CartProvider>().addToCart(
                                      CartModel(
                                          quantity: cart.quantity - 1,
                                          product: cart.product));
                                }
                              },
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 0.0,
                                  ),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.black45,
                                )),
                              ),
                            ),
                            const Spacer(),
                            Text(cart.quantity.toString()),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                context.read<CartProvider>().addToCart(
                                    CartModel(
                                        quantity: cart.quantity + 1,
                                        product: cart.product));
                              },
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 0.0,
                                  ),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.black45,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "\$${cart.product.price * cart.quantity}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w900, fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}
