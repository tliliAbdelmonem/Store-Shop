import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '/models/cart_model.dart';
import '/providers/cart_provider.dart';
import '/models/category_model.dart';
import '/models/product_model.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget(
      {super.key, required this.product, required this.category});
  final ProductModel product;
  final CategoryModel category;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductModel product = widget.product;
    return GestureDetector(
      onTap: () => context.go(context.namedLocation('productDetails',
          pathParameters: <String, String>{
            'productId': product.id.toString()
          })),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Theme.of(context).colorScheme.surfaceContainer,
                image: DecorationImage(
                  image: AssetImage("assets/images/${product.photo}"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Theme.of(context).colorScheme.surfaceContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "${product.colors.length} Couleurs",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontSize: 8, color: Colors.black87),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Price\n',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontSize: 8, color: Colors.black87),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '\$${product.price}',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900)),
                              ],
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.read<CartProvider>().addToCart(
                                  CartModel(quantity: 1, product: product));
                            },
                            child: Container(
                              width: 20.0,
                              height: 20.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black,
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
                                color: Colors.white,
                              )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
