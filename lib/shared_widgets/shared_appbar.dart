import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: non_constant_identifier_names
SliverAppBar SharedAppBar(BuildContext context, bool innerBoxIsScrolled) {
  return SliverAppBar(
    toolbarHeight: 55,
    backgroundColor: Theme.of(context).colorScheme.surface,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bonjour Foulan',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w900)),
        Text(
          '25 sept. 14:46',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.black54),
        ),
      ],
    ),
    leadingWidth: 65,
    leading: Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).colorScheme.outline,
              Theme.of(context).colorScheme.outline.withOpacity(0.3),
            ],
          ),
          image: const DecorationImage(
            image: AssetImage("assets/images/bohemian-man.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          width: 24,
          height: 24,
        ),
        tooltip: 'Show Snackbar',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('This is a snackbar')));
        },
      ),
    ],
    //is the title in the app bar.
    pinned: true,
    expandedHeight: 50.0,

    forceElevated: innerBoxIsScrolled,
  );
}
