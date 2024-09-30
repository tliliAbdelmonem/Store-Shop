import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '/data/products.dart';
import '/models/cart_model.dart';
import '/models/product_model.dart';
import '/providers/cart_provider.dart';
import '/utils/favorite_manager.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.productId});
  final String productId;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    checkIsFavorite();
  }

  Future<bool> checkIsFavorite() async {
    return await FavoriteManager.isFavoriteContains(
        int.parse(widget.productId));
  }

  @override
  Widget build(BuildContext context) {
    ProductModel product = products
        .firstWhere((element) => element.id == int.parse(widget.productId));
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Theme.of(context).colorScheme.outline,
                              Theme.of(context)
                                  .colorScheme
                                  .outline
                                  .withOpacity(0.3),
                            ],
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${product.photo}"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24)),
                          Row(
                            children: [
                              StarRating(
                                size: 20.0,
                                rating: product.rate,
                                color: Colors.orange,
                                borderColor: Colors.grey,
                                allowHalfRating: true,
                                starCount: 5,
                                onRatingChanged: (rating) => {},
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                '5.0 | 2K + Sold',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                              ),
                              const Spacer(),
                              Text(
                                "\$${product.price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 24),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Description',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            product.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Colors : ",
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              ...product.colors.map(
                                (color) => Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 20.0,
                                  height: 20.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: HexColor(color!),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 80.0,
                                height: 30.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Theme.of(context).colorScheme.surface,
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 0.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (quantity - 1 >= 0) {
                                            setState(() {
                                              quantity = quantity - 1;
                                            });
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
                                      Text(quantity.toString()),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity = quantity + 1;
                                          });
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
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<CartProvider>().addToCart(CartModel(
                                  quantity: quantity, product: product));

                              SnackBar snackBar = SnackBar(
                                elevation: 6.0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.green,
                                content: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/check.svg',
                                      colorFilter: ColorFilter.mode(
                                          Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          BlendMode.srcIn),
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    SizedBox(
                                      width: 250,
                                      child: Text(
                                        'Vous avez ajouté ${product.name} à votre panier.',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: Container(
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
                                'Ajouter au panier',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 30,
                  left: 32,
                  width: MediaQuery.of(context).size.width - 64,
                  child: FutureBuilder<bool>(
                      future: checkIsFavorite(),
                      builder: (context, AsyncSnapshot<bool> snapshot) {
                        if (snapshot.hasData) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/left-arrow.svg',
                                  colorFilter: ColorFilter.mode(
                                      Theme.of(context).colorScheme.onSecondary,
                                      BlendMode.srcIn),
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "Detail Produit",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  if (snapshot.data! == false) {
                                    FavoriteManager.addToFavorite(product.id);
                                  } else {
                                    FavoriteManager.removeFavorite(product.id);
                                  }
                                  setState(() {});
                                },
                                child: snapshot.data! == true
                                    ? SvgPicture.asset(
                                        'assets/icons/favorite-ok.svg',
                                        colorFilter: const ColorFilter.mode(
                                            Colors.red, BlendMode.srcIn),
                                        width: 24,
                                        height: 24,
                                      )
                                    : SvgPicture.asset(
                                        'assets/icons/favorite.svg',
                                        colorFilter: ColorFilter.mode(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                            BlendMode.srcIn),
                                        width: 24,
                                        height: 24,
                                      ),
                              ),
                            ],
                          );
                        } else {
                          return const CircularProgressIndicator();
                        }
                      })),
              Positioned(
                top: 392,
                right: 46,
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerLow,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/emblem-shared.svg',
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
