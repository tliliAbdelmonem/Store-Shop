import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '/data/catagories.dart';
import '/data/products.dart';
import '/models/product_model.dart';
import '/pages/home/widgets/product_card_widget.dart';
import '/pages/home/widgets/search_bar_widget.dart';
import '/shared_widgets/app_bottom_navigation_bar_widget.dart';
import '/shared_widgets/shared_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: DefaultTabController(
        length: categories.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            // These are the slivers that show up in the "outer" scroll view.
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SharedAppBar(context, innerBoxIsScrolled),
              ),
              SliverAppBar(
                backgroundColor: Colors.transparent,
                collapsedHeight: 390,
                expandedHeight: 390,
                flexibleSpace: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 56,
                        ),
                        const SearchBarWidget(),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "Spécial pour toi",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "Voir tout",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Theme.of(context).colorScheme.outline,
                                Theme.of(context).colorScheme.outline,
                                Theme.of(context).colorScheme.outline,
                                //Theme.of(context).colorScheme.outline.withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/man-suit-jeans-with-arms-crossed.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Dernière remise',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.white),
                                    ),
                                    Text(
                                      'Jusqu\'à 80 %',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white,
                                              fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                        // softWrap: true,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "Explorer par catégorie",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "Voir tout",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(TabBar(
                    tabAlignment: TabAlignment.start,
                    padding: EdgeInsets.zero,
                    isScrollable: true,
                    labelColor: Colors.white,
                    labelStyle: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w800),
                    unselectedLabelStyle: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w400),
                    unselectedLabelColor: Colors.black54,
                    automaticIndicatorColorAdjustment: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: const EdgeInsets.all(4.0),
                    dividerColor: Colors.transparent,
                    indicator: UnderlineTabIndicator(
                      borderRadius: const BorderRadius.all(Radius.circular(52)),
                      borderSide:
                          BorderSide(color: HexColor("#004572"), width: 40.0),
                    ),
                    tabs: categories
                        .map((e) => Tab(
                              text: e.name,
                            ))
                        .toList())),
                floating: false,
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: categories.map((cat) {
              List<ProductModel> listOfproducts = products
                  .where((prod) => prod.categoryIds.contains(cat.id))
                  .toList();

              return GridView.count(
                padding: const EdgeInsets.all(12),
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: listOfproducts
                    .map((product) => ProductCardWidget(
                          product: product,
                          category: cat,
                        ))
                    .toList(),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      margin: EdgeInsets.zero,
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
