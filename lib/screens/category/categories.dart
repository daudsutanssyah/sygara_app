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
                  MaterialPageRoute(builder: (context) => CategoryBuah()),
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
                  MaterialPageRoute(builder: (context) => CategorySayur()),
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Image.asset(
                imagePath,
                width: 52,
                height: 52,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
