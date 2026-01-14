// lib/presentation/screens/home/widgets/product_section.dart
import 'package:flutter/material.dart';
import 'package:sygara_app/data/models/product.dart';
import 'package:sygara_app/screens/home/widgets/section_header.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/screens/product/widgets/product_widget.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<Product> products;
  final bool showSeeAll;
  final VoidCallback? onSeeAll;

  const ProductSection({
    super.key,
    required this.title,
    required this.products,
    this.showSeeAll = false,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showSeeAll)
          SectionHeader(title: title, showSeeAll: true, onSeeAll: onSeeAll)
        else
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(title, style: AppTextStyles.h4),
          ),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return ProductWidget(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}
