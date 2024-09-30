import 'package:flutter/material.dart';
import '/shared_widgets/app_bottom_navigation_bar_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarWidget(),
        appBar: AppBar(
          toolbarHeight: 55,
          backgroundColor: Theme.of(context).colorScheme.surface,
          centerTitle: true,
          title: const Text(
            "Favorite",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: const Center(child: Text("En cours de construction")));
  }
}
