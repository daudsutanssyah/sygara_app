import 'package:flutter/material.dart';
import 'package:sygara_app/data/models/product.dart';
import 'package:sygara_app/screens/cart/cart_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/widgets/price_bottom_bar.dart';

class DetailPage extends StatefulWidget {
  final Product product; // Terima product

  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;

  void increment() {
    if (quantity < 10) {
      setState(() {
        quantity++;
      });
    }
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

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
        title: Text('Detail Produk', style: AppTextStyles.h4),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(widget.product.image)),
              const SizedBox(height: 11),
              Text(widget.product.name, style: AppTextStyles.h2),
              const SizedBox(height: 8),
              Text(
                'Kategori : ${widget.product.category}',
                style: AppTextStyles.bodyLarge,
              ),
              const SizedBox(height: 20),
              Text('Deskripsi', style: AppTextStyles.h5),
              const SizedBox(height: 8),
              Text(
                widget.product.description,
                style: AppTextStyles.bodyMedium.copyWith(fontSize: 15),
              ),
              const SizedBox(height: 15),
              Text(
                "Harga/Kg",
                style: AppTextStyles.bodyMedium.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.product.price,
                style: AppTextStyles.h5.copyWith(color: AppColors.primary),
              ),
              const SizedBox(height: 20),
              Text(
                "Mau beli berapa Kg?",
                style: AppTextStyles.bodyMedium.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  IconButton(
                    onPressed: decrement,
                    icon: Image.asset('assets/icon/ic-minus.png'),
                  ),
                  Text(
                    quantity.toString(),
                    style: AppTextStyles.h5.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: increment,
                    icon: Image.asset('assets/icon/ic-plus.png'),
                  ),
                  Text(
                    '*Maksimal pembelian 10kg',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: PriceBottomBar(
        priceLabel: 'Harga',
        priceValue: widget.product.getPriceWithQuantity(quantity),
        buttonText: '+ Keranjang',
        onPressed: () {
          _showSuccessDialog(context);
        },
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          content: Row(
            children: [
              const Icon(
                Icons.check_circle,
                color: AppColors.primary,
                size: 23,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Produk berhasil ditambah ke keranjang!',
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    // Navigate to cart after showing dialog
    Future.delayed(const Duration(seconds: 1), () {
      if (!context.mounted) return; // Mounted check

      Navigator.pop(context); // Close dialog
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CartPage()),
      );
    });
  }
}
