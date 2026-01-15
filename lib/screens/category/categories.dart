import 'package:flutter/material.dart';
import 'package:sygara_app/screens/category/widgets/category_buah.dart';
import 'package:sygara_app/screens/category/widgets/category_sayur.dart';
import 'package:sygara_app/themes/app_colors.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: _CategoryCard(
              title: 'BUAH-\nBUAHAN',
              imagePath: 'assets/img-category-buah.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryBuah()),
                );
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _CategoryCard(
              title: 'SAYUR-\nMAYUR',
              imagePath: 'assets/img-category-sayur.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategorySayur(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// Reusable Category Card Widget
class _CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const _CategoryCard({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width untuk responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 56) / 2; // 56 = padding + gap

    // Calculate responsive sizes
    final imageSize = cardWidth * 0.35; // 35% dari card width
    final fontSize = cardWidth * 0.11; // Responsive font size

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.paleGreen,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowLight,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Container(
          height: 96,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: fontSize.clamp(14.0, 18.0), // Min 14, max 18
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                flex: 4,
                child: Image.asset(
                  imagePath,
                  width: imageSize.clamp(40.0, 60.0), // Min 40, max 60
                  height: imageSize.clamp(40.0, 60.0),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
