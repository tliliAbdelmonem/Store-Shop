import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_shop/pages/favorite/favorite_page.dart';
import 'package:store_shop/pages/profile/profile_page.dart';
import '/pages/cart/cart_page.dart';
import '/pages/main/main_page.dart';
import '/pages/product-details/product_details_page.dart';

GoRouter appRouter() {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
        routes: <GoRoute>[
          GoRoute(
            path: 'details/:productId',
            name: 'productDetails',
            builder: (BuildContext context, GoRouterState state) {
              final String productId = state.pathParameters['productId']!;
              return ProductDetailsPage(productId: productId);
            },
          ),
          GoRoute(
            path: 'cart',
            name: 'cart',
            builder: (BuildContext context, GoRouterState state) {
              return const CartPage();
            },
          ),
          GoRoute(
            path: 'profile',
            name: 'profile',
            builder: (BuildContext context, GoRouterState state) {
              return const ProfilePage();
            },
          ),
          GoRoute(
            path: 'favorite',
            name: 'favorite',
            builder: (BuildContext context, GoRouterState state) {
              return const FavoritePage();
            },
          ),
        ],
      ),
    ],
  );
}
