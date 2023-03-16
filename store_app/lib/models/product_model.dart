class ProductModle {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;

  ProductModle({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductModle.fromJson(jsonData) {
    return ProductModle(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
    );
  }
}
