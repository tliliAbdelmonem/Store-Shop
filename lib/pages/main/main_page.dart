import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '/pages/main/widgets/promo_widget.dart';
import '/data/catagories.dart';
import '/data/products.dart';
import '/models/product_model.dart';
import 'widgets/product_card_widget.dart';
import 'widgets/search_bar_widget.dart';
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
                        const PromoWidget(),
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
