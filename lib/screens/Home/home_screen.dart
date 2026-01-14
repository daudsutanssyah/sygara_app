import 'package:flutter/material.dart';
import 'package:sygara_app/data/mock/mock_data.dart';
import 'package:sygara_app/data/models/product.dart';
import 'package:sygara_app/screens/category/categories.dart';
import 'package:sygara_app/screens/category/widgets/category_buah.dart';
import 'package:sygara_app/screens/category/widgets/category_sayur.dart';
import 'package:sygara_app/screens/home/widgets/image_banner.dart';
import 'package:sygara_app/screens/home/widgets/search_bar.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/screens/product/widgets/product_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 30),
            const MySearchBar(),
            const SizedBox(height: 30),
            const ImageBanner(),
            const SizedBox(height: 30),
            const Categories(),
            const SizedBox(height: 30),

            // Recommendation Section
            ProductSection(
              title: 'Rekomendasi untuk Anda',
              products:
                  MockData.recommendedProducts
                      .map((data) => Product.fromMap(data))
                      .toList(),
              showSeeAll: false,
            ),

            const SizedBox(height: 30),

            // Fruit Section
            ProductSection(
              title: 'Buah Segar 🍎',
              products:
                  MockData.fruitProducts
                      .map((data) => Product.fromMap(data))
                      .toList(),
              showSeeAll: true,
              onSeeAll: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryBuah()),
                );
              },
            ),

            const SizedBox(height: 30),

            // Vegetable Section
            ProductSection(
              title: 'Sayuran Segar 🥕',
              products:
                  MockData.vegetableProducts
                      .map((data) => Product.fromMap(data))
                      .toList(),
              showSeeAll: true,
              onSeeAll: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategorySayur(),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
