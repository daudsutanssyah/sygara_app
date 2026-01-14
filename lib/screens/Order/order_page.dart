import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
// import 'package:sygara_app/themes/themes.dart';
import 'package:sygara_app/screens/order/widgets/order_widget.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 51),
          Text('Pesanan Anda', style: AppTextStyles.h2),
          const SizedBox(height: 36),
          Text('Dalam Proses', style: AppTextStyles.h5),
          const SizedBox(height: 16),
          const OrderWidget(
            tanggal: '04/05/2025',
            items: 'Bayam (1Kg), Tomat (1Kg),',
            totalHarga: 'Rp 35.000',
            status: 'Diproses',
          ),
          const SizedBox(height: 30),
          Text('Riwayat Pemesanan', style: AppTextStyles.h5),
          const SizedBox(height: 16),
          const OrderWidget(
            tanggal: '14/02/2025',
            items: 'Apel Fuji (2Kg), Wortel (1kg)',
            totalHarga: 'Rp 75.000',
            status: 'Selesai',
          ),
        ],
      ),
    );
  }
}
