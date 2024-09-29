import 'package:flutter/material.dart';

class CategoriesTabsWidget extends StatelessWidget {
  const CategoriesTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: DefaultTabController(
      length: 2,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // TOP CONTAINER //
          Container(height: 30),

          // TAB BAR //
          const TabBar(tabs: [
            Tab(child: Text("Tab 1")),
            Tab(child: Text("Tab 2")),
          ]),

          // TAB BAR VIEWS //
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: [
                Container(height: 500),
                Container(height: 500),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
