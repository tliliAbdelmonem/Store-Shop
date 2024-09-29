class ProductModel {
  final int id;
  final String ref;
  final List<int?> categoryIds;
  final String name;
  final String description;
  final List<String?> colors;
  final double price;
  final double rate;
  final String photo;

  const ProductModel(
      {required this.id,
      required this.ref,
      required this.categoryIds,
      required this.name,
      required this.description,
      required this.colors,
      required this.rate,
      required this.price,
      required this.photo});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      ref: json['ref'] ?? 0,
      categoryIds: json['category_id'] ?? [],
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      colors: json['colors'] ?? [],
      price: json['price'] ?? 0.0,
      rate: json['rate'] ?? 0.0,
      photo: json['photo'] ?? "",
    );
  }

  @override
  String toString() {
    return name.toLowerCase();
  }
}
