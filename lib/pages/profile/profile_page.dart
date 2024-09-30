import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/shared_widgets/app_bottom_navigation_bar_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            "Profile",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
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
              const SizedBox(
                height: 8,
              ),
              Text(
                "Foulan Foulani",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Coordonnées : ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/smartphone.svg',
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "+216 00 000 000",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/email.svg',
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "email@gmail.com",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/address.svg',
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "1030 N Hayden Rd Scottsdale Arizona",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Vos commandes : ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600)),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 100,
                padding: EdgeInsets.zero,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green.withOpacity(0.2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/delivery-1.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.green, BlendMode.srcIn),
                              width: 20,
                              height: 20,
                            ),
                            const Spacer(),
                            const Text(
                              "13",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "Effectées",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black45),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width: 10,
                      thickness: 1,
                      indent: 4,
                      endIndent: 4,
                      color: Theme.of(context).colorScheme.surfaceContainerLow,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/delivered.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.blue, BlendMode.srcIn),
                              width: 20,
                              height: 20,
                            ),
                            const Spacer(),
                            const Text(
                              "02",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "En cours",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black45),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width: 10,
                      thickness: 1,
                      indent: 4,
                      endIndent: 4,
                      color: Theme.of(context).colorScheme.surfaceContainerLow,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange.withOpacity(0.2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/delivery-truck.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.orange, BlendMode.srcIn),
                              width: 20,
                              height: 20,
                            ),
                            const Spacer(),
                            const Text(
                              "01",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "En attentes",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black45),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
              //  const Text("En cours de construction"),
            ],
          )),
        ));
  }
}
