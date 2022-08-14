import 'package:flutter/material.dart';

import '/screens/detail/detail.dart';
import '../../../models/clothes.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;

  const ClothesItem({Key? key, required this.clothes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(clothes: clothes),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(clothes.imageUrl),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child:
                        const Icon(Icons.favorite, color: Colors.red, size: 15),
                  ),
                ),
              ],
            ),
            Text(
              clothes.title,
              style: const TextStyle(height: 1.5, fontWeight: FontWeight.bold),
            ),
            Text(
              clothes.subtitle,
              style: const TextStyle(height: 1.5, fontWeight: FontWeight.bold),
            ),
            Text(
              clothes.price,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
