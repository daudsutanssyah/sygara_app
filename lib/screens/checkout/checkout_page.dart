import 'package:flutter/material.dart';
import 'package:sygara_app/screens/checkout/succes_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/screens/checkout/widgets/checkout_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String metodePengiriman = '-- Pilih Satu --';
  String metodeBayar = 'COD';

  final pilihan = [
    '-- Pilih Satu --',
    'Reguler | Rp 10.000',
    'Express | Rp 20.000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout', style: AppTextStyles.h4),
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
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.mediumGrey, width: 1.6),
                  ),
                  child: const Column(
                    children: [
                      CheckoutWidget(
                        imageUrl: 'assets/img-bayam.png',
                        nama: 'Bayam (1kg)',
                        harga: 'Rp 15.000',
                      ),
                      CheckoutWidget(
                        imageUrl: 'assets/img-tomat.png',
                        nama: 'Tomat (1kg)',
                        harga: 'Rp 10.000',
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text('Informasi Pengiriman', style: AppTextStyles.h2),
                const SizedBox(height: 16),
                _buildTextField(
                  label: 'Nama Pembeli',
                  hint: 'Ahmad Fulan',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 13),
                _buildTextField(
                  label: 'Nomor Telepon',
                  hint: '628123829382932',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 13),
                _buildTextField(
                  label: 'Alamat Lengkap',
                  hint: 'cth. jalan jendral sudirman, disamping gang...',
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 4,
                  isFilled: false,
                ),
                const SizedBox(height: 13),
                _buildDropdown(
                  label: 'Pilih Metode Pengiriman',
                  value: metodePengiriman,
                  items: pilihan,
                  isFilled: false,
                  onChanged: (String? newValue) {
                    setState(() {
                      metodePengiriman = newValue!;
                    });
                  },
                ),
                const SizedBox(height: 13),
                _buildDropdown(
                  label: 'Pilih Metode Pembayaran',
                  value: metodeBayar,
                  items: const ['COD'],
                  isFilled: true,
                  onChanged: (String? newValue) {
                    setState(() {
                      metodeBayar = newValue!;
                    });
                  },
                ),
                const SizedBox(height: 5),
                Text(
                  '*Saat ini pembayaran hanya via COD',
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 30),
                Text('Ringkasan Belanja', style: AppTextStyles.h2),
                const SizedBox(height: 17),
                _buildSummaryItem(label: 'Berat Total : ', value: '2Kg'),
                const SizedBox(height: 10),
                _buildSummaryItem(label: 'Ongkos Kirim : ', value: 'Rp 10.000'),
                const SizedBox(height: 10),
                _buildSummaryItem(label: 'Harga Total : ', value: 'Rp 35.000'),
                const SizedBox(height: 10),
                _buildSummaryItem(
                  label: 'Metode Bayar : ',
                  value: 'COD (Cash On Delivery)',
                ),
              ],
            ),
          ),
        ],
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
                    'Harga Total',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Rp 35.000',
                    style: AppTextStyles.h2.copyWith(color: AppColors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 176,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => _showConfirmationDialog(context),
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

  Widget _buildTextField({
    required String label,
    required String hint,
    required TextInputType keyboardType,
    int maxLines = 1,
    bool isFilled = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.h5),
        const SizedBox(height: 10),
        TextFormField(
          keyboardType: keyboardType,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 13,
            ),
            filled: isFilled,
            fillColor: isFilled ? AppColors.lightGrey : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: isFilled ? AppColors.mediumGrey : AppColors.secondary,
                width: isFilled ? 1 : 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primary, width: 2),
            ),
            hintText: hint,
            hintStyle: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String label,
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
    bool isFilled = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.h5),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          icon: Image.asset("assets/icon/ic-arrow.png", width: 16, height: 16),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 16,
              top: 13,
              bottom: 13,
              right: 18,
            ),
            filled: isFilled,
            fillColor: isFilled ? AppColors.lightGrey : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: isFilled ? AppColors.mediumGrey : AppColors.secondary,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primary, width: 2),
            ),
          ),
          initialValue: value,
          items:
              items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style:
                        isFilled
                            ? AppTextStyles.bodyLarge.copyWith(
                              color: AppColors.textSecondary,
                            )
                            : AppTextStyles.bodyLarge,
                  ),
                );
              }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _buildSummaryItem({required String label, required String value}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: label, style: AppTextStyles.bodyLarge),
          TextSpan(
            text: value,
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Center(
            child: Text(
              'Proses pesanan sekarang?',
              style: AppTextStyles.h5,
              textAlign: TextAlign.center,
            ),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccesPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Ya Proses', style: AppTextStyles.buttonMedium),
                ),
              ),
              const SizedBox(width: 11),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.error),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Batalkan',
                    style: AppTextStyles.buttonMedium.copyWith(
                      color: AppColors.error,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
