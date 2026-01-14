import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class CheckoutWidget extends StatelessWidget {
  final String imageUrl;
  final String nama;
  final String harga;

  const CheckoutWidget({
    super.key,
    required this.imageUrl,
    required this.nama,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 20, right: 17),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 87,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.mediumGrey, width: 1.6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imageUrl, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 19),
          Expanded(
            child: Text(
              nama,
              style: AppTextStyles.h5,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            harga,
            style: AppTextStyles.h5.copyWith(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
