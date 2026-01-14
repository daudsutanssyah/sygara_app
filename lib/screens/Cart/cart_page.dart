import 'package:flutter/material.dart';
import 'package:sygara_app/screens/checkout/checkout_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/screens/cart/widgets/card_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/icon/ic-arrow-back.png',
            width: 40,
            height: 40,
          ),
        ),
        title: Text('Keranjang', style: AppTextStyles.h4),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
        child: ListView(
          children: const [
            CardWidget(
              imageUrl: 'assets/img-bayam.png',
              nama: 'Bayam',
              totalHarga: 'Rp 15.000 ',
            ),
            SizedBox(height: 15),
            CardWidget(
              imageUrl: 'assets/img-tomat.png',
              nama: 'Tomat',
              totalHarga: 'Rp 10.000',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowMedium,
              offset: const Offset(0, -8),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sub Total',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Rp 25.000',
                    style: AppTextStyles.h2.copyWith(color: AppColors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 176,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckoutPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Beli',
                    style: AppTextStyles.h5.copyWith(color: AppColors.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
