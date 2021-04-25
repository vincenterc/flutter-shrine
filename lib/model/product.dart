enum Category {
  all,
  accessories,
  clothing,
  home,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
  // ignore: unnecessary_null_comparison
  })  : assert(category != null),
        // ignore: unnecessary_null_comparison
        assert(id != null),
        // ignore: unnecessary_null_comparison
        assert(isFeatured != null),
        // ignore: unnecessary_null_comparison
        assert(name != null),
        // ignore: unnecessary_null_comparison
        assert(price != null);

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';
}
