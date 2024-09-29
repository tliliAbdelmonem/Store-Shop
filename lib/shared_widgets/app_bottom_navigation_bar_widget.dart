import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '/providers/cart_provider.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  static const List<String> _routes = [
    '/',
    '/cart',
    '/',
    '/',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    context.go(_routes[index]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        _onItemTapped(index);
      },
      selectedIndex: _selectedIndex,
      destinations: <Widget>[
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            'assets/icons/home.svg',
            width: 24,
            height: 24,
          ),
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            colorFilter:
                const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: context.watch<CartProvider>().totalQuantity > 0
              ? Badge(
                  label: Text(
                      context.watch<CartProvider>().totalQuantity.toString()),
                  child: SvgPicture.asset(
                    'assets/icons/cart-outlained.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
                    width: 24,
                    height: 24,
                  ),
                )
              : SvgPicture.asset(
                  'assets/icons/cart-outlained.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
                  width: 24,
                  height: 24,
                ),
          label: 'Panier',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            'assets/icons/favorite.svg',
            colorFilter:
                const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
          label: 'Favorite',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            'assets/icons/avatar.svg',
            colorFilter:
                const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
