import 'package:flutter/material.dart';

import 'clothes_item.dart';
import 'categories_list.dart';
import '../../../models/clothes.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

  NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoriesList(title: 'New Arrival'),
        SizedBox(
          height: 280,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            itemCount: clothesList.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) =>
                ClothesItem(clothes: clothesList[index]),
          ),
        ),
      ],
    );
  }
}
