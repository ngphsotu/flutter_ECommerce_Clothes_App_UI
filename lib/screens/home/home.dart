import 'package:flutter/material.dart';

import '/screens/home/widget/best_sell.dart';
import '/screens/home/widget/new_arrival.dart';
import '/screens/home/widget/search_input.dart';
import '/screens/home/widget/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  final bottomList = ['home', 'menu', 'heart', 'user'];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SearchInput(),
            NewArrival(),
            const BestSell(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomList
            .map(
              (e) => BottomNavigationBarItem(
                label: e,
                icon: Image.asset('assets/icons/$e.png', width: 25),
              ),
            )
            .toList(),
      ),
    );
  }
}
