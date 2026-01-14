// lib/data/mock_data.dart
class MockData {
  static final List<Map<String, String>> recommendedProducts = [
    {
      'id': '1',
      'name': 'Pisang Cavendish',
      'image': 'assets/img-pisang.png',
      'price': 'Rp. 15.000/kg',
      'category': 'Buah',
      'description':
          'Pisang Cavendish premium dengan rasa manis dan tekstur lembut. Kaya akan kalium dan vitamin B6.',
    },
    {
      'id': '2',
      'name': 'Bayam',
      'image': 'assets/img-bayam.png',
      'price': 'Rp. 15.000/kg',
      'category': 'Sayur',
      'description':
          'Nikmati sayur bayam segar langsung dari kebun dengan rasa yang segar.',
    },
    {
      'id': '3',
      'name': 'Tomat',
      'image': 'assets/img-tomat.png',
      'price': 'Rp. 10.000/kg',
      'category': 'Sayur',
      'description':
          'Tomat segar dengan warna merah cerah, cocok untuk masakan atau salad.',
    },
  ];

  static final List<Map<String, String>> fruitProducts = [
    {
      'id': '4',
      'name': 'Apel Fuji',
      'image': 'assets/img-apel.png',
      'price': 'Rp. 25.000/kg',
      'category': 'Buah',
      'description':
          'Apel Fuji manis dan renyah, kaya akan antioksidan dan serat.',
    },
    {
      'id': '5',
      'name': 'Semangka',
      'image': 'assets/img-semangka.png',
      'price': 'Rp. 15.000/kg',
      'category': 'Buah',
      'description':
          'Semangka segar dengan daging merah manis, sempurna untuk menghilangkan dahaga.',
    },
    {
      'id': '6',
      'name': 'Jeruk Sunkist',
      'image': 'assets/img-jeruk.png',
      'price': 'Rp. 10.000/kg',
      'category': 'Buah',
      'description':
          'Jeruk Sunkist kaya vitamin C, rasa manis segar untuk kesehatan keluarga.',
    },
  ];

  static final List<Map<String, String>> vegetableProducts = [
    {
      'id': '7',
      'name': 'Wortel',
      'image': 'assets/img-wortel.png',
      'price': 'Rp. 15.000/kg',
      'category': 'Sayur',
      'description':
          'Wortel segar kaya beta-karoten, baik untuk kesehatan mata.',
    },
    {
      'id': '8',
      'name': 'Brokoli',
      'image': 'assets/img-brokoli.png',
      'price': 'Rp. 25.000/kg',
      'category': 'Sayur',
      'description':
          'Brokoli hijau segar, superfood kaya nutrisi dan antioksidan.',
    },
    {
      'id': '9',
      'name': 'Tomat',
      'image': 'assets/img-tomat.png',
      'price': 'Rp. 10.000/kg',
      'category': 'Sayur',
      'description':
          'Tomat segar dengan warna merah cerah, cocok untuk masakan atau salad.',
    },
  ];

  // Helper method untuk get all products
  static List<Map<String, String>> get allProducts {
    return [...recommendedProducts, ...fruitProducts, ...vegetableProducts];
  }

  // Helper method untuk get product by ID
  static Map<String, String>? getProductById(String id) {
    try {
      return allProducts.firstWhere((product) => product['id'] == id);
    } catch (e) {
      return null;
    }
  }
}
