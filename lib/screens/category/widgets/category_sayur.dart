import 'package:flutter/material.dart';
import 'package:sygara_app/data/mock/mock_data.dart';
import 'package:sygara_app/data/models/product.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/screens/product/widgets/product_widget.dart';

class CategorySayur extends StatelessWidget {
  const CategorySayur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.textPrimary,
            size: 20,
          ),
        ),
        title: Text('Kategori Sayur Mayur', style: AppTextStyles.h5),
      ),
      body:
          MockData.vegetableProducts.isEmpty
              ? _buildEmptyState()
              : _buildProductGrid(),
    );
  }

  /// Build empty state when no products
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.shopping_basket_outlined,
            size: 80,
            color: AppColors.textLight,
          ),
          const SizedBox(height: 16),
          Text(
            'Belum ada produk',
            style: AppTextStyles.h5.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: 8),
          Text(
            'Produk sayuran akan segera hadir',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textLight,
            ),
          ),
        ],
      ),
    );
  }

  /// Build product grid
  Widget _buildProductGrid() {
    // Convert Map to Product model
    final products =
        MockData.vegetableProducts
            .map((data) => Product.fromMap(data))
            .toList();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75, // Width:Height ratio
        ),
        itemBuilder: (context, index) {
          return ProductWidget(product: products[index]);
        },
      ),
    );
  }
}
