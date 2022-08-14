class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;

  Clothes({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imageUrl,
    required this.detailUrl,
  });

  static List<Clothes> generateClothes() {
    return [
      Clothes(
        title: 'Gucci oversize',
        subtitle: 'Hoodie',
        price: '\$79.99',
        imageUrl: 'assets/images/arrival1.png',
        detailUrl: ['assets/images/arrival1.png', 'assets/images/detail2.png'],
      ),
      Clothes(
        title: 'Man Coat',
        subtitle: 'Rain-Jacket',
        price: '\$39.99',
        imageUrl: 'assets/images/arrival2.png',
        detailUrl: ['assets/images/arrival2.png', 'assets/images/detail3.png'],
      ),
    ];
  }
}
