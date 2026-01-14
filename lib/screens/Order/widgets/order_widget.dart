import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class OrderWidget extends StatelessWidget {
  final String tanggal, items, totalHarga, status;

  const OrderWidget({
    super.key,
    required this.tanggal,
    required this.items,
    required this.totalHarga,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final bool isProcessing = status == 'Diproses';
    final Color statusColor =
        isProcessing ? AppColors.warning : AppColors.success;

    return Container(
      padding: const EdgeInsets.all(14),
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.secondary, width: 1.16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Belanja', style: AppTextStyles.h5),
          Text(tanggal, style: AppTextStyles.bodySmall),
          const SizedBox(height: 15),
          const Divider(color: AppColors.mediumGrey, thickness: 2),
          const SizedBox(height: 18),
          Row(
            children: [
              Image.asset('assets/img-order.png', width: 51, height: 51),
              const SizedBox(width: 37),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item :',
                      style: AppTextStyles.bodySmall.copyWith(fontSize: 13),
                    ),
                    Text(
                      items,
                      style: AppTextStyles.bodyMedium.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total belanja :',
                    style: AppTextStyles.caption.copyWith(fontSize: 11),
                  ),
                  Text(
                    totalHarga,
                    style: AppTextStyles.bodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                width: 133,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: statusColor, width: 2),
                ),
                child: Center(
                  child: Text(
                    status,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: statusColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
