import 'package:flutter/material.dart';
import 'package:sygara_app/screens/checkout/checkout_page.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/screens/cart/widgets/card_widget.dart';
import 'package:sygara_app/widgets/price_bottom_bar.dart';

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
              name: 'Bayam',
              totalPrice: 'Rp 15.000 ',
            ),
            SizedBox(height: 15),
            CardWidget(
              imageUrl: 'assets/img-tomat.png',
              name: 'Tomat',
              totalPrice: 'Rp 10.000',
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
      bottomNavigationBar: PriceBottomBar(
        priceLabel: 'Sub Total',
        priceValue: 'Rp 25.000',
        buttonText: 'Beli',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CheckoutPage()),
          );
        },
      ),
    );
  }
}
