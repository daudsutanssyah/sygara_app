import 'package:flutter/material.dart';
import 'package:sygara_app/data/models/product.dart';
import 'package:sygara_app/screens/product/detail_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
// import 'package:sygara_app/themes/themes.dart';

class ProductWidget extends StatelessWidget {
  final Product product; // Ganti ke Product model

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(product: product), // Pass product
          ),
        );
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 176,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.mediumGrey, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(28),
              ),
              child: Image.asset(
                product.image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    product.name,
                    style: AppTextStyles.h5,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.price,
                    style: AppTextStyles.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
