import 'package:flutter/material.dart';
import '/providers/cart_provider.dart';
import '/router.dart';
import '/theme/theme.dart';
import '/theme/util.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Outfit", "Outfit");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter(),
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
    );
  }
}
