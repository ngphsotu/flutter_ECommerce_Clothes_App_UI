import 'package:flutter/material.dart';

import '/models/clothes.dart';
import '/screens/detail/widget/add_card.dart';
import '/screens/detail/widget/size_list.dart';
import '/screens/detail/widget/clother_info.dart';
import '/screens/detail/widget/detail_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;

  const DetailPage({Key? key, required this.clothes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(clothes: clothes),
            ClothesInfo(clothes: clothes),
            const SizeList(),
            AddCard(clothes: clothes),
          ],
        ),
      ),
    );
  }
}
