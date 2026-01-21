// lib/models/product_model.dart
class Product {
  final String id;
  final String name;
  final String image;
  final String price;
  final String category;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.category,
    this.description = '',
  });

  // Factory method untuk create dari Map
  factory Product.fromMap(Map<String, String> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      price: map['price'] ?? '',
      category: map['category'] ?? '',
      description: map['description'] ?? 'Produk segar berkualitas tinggi',
    );
  }

  /// Method untuk convert ke Map
  Map<String, String> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'category': category,
      'description': description,
    };
  }

  /// Parse harga ke integer (remove "Rp. " dan "/kg")
  int get priceValue {
    final priceStr = price
        .replaceAll('Rp. ', '')
        .replaceAll('/kg', '')
        .replaceAll('.', '');
    return int.tryParse(priceStr) ?? 0;
  }

  /// Format harga dengan quantity
  String getPriceWithQuantity(int quantity) {
    final total = priceValue * quantity;
    return 'Rp ${total.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }
}
