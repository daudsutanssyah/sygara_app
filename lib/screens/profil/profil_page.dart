import 'package:flutter/material.dart';
import 'package:sygara_app/screens/navigation/splash_screen.dart';
import 'package:sygara_app/screens/profil/edit_profil_page.dart';
import 'package:sygara_app/screens/profil/reset_password_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  // Dummy data static
  static const String dummyName = 'Ahmad Fulan';
  static const String dummyEmail = 'ahmad.fulan@email.com';
  static const String dummyPhone = '628123456789';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: AppTextStyles.h2),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfilPage()),
              );
            },
            child: Text(
              'Edit Profil',
              style: AppTextStyles.bodyLarge.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 36),
                  _buildProfileField(label: 'Nama Lengkap', value: dummyName),
                  const SizedBox(height: 21),
                  const Divider(color: AppColors.mediumGrey, thickness: 2),
                  const SizedBox(height: 14),
                  _buildProfileField(label: 'Email', value: dummyEmail),
                  const SizedBox(height: 21),
                  const Divider(color: AppColors.mediumGrey, thickness: 2),
                  const SizedBox(height: 14),
                  _buildProfileField(label: 'Nomor Telepon', value: dummyPhone),
                  const SizedBox(height: 21),
                  const Divider(color: AppColors.mediumGrey, thickness: 2),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordPage(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            'Reset Password',
                            style: AppTextStyles.bodyLarge.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.mediumGrey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: InkWell(
                onTap: () => _showLogoutDialog(context),
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Log Out',
                    style: AppTextStyles.h4.copyWith(color: AppColors.error),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileField({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.bodyLarge.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 6),
        Text(value, style: AppTextStyles.h5),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.only(top: 28),
          content: Text(
            'Yakin ingin Log Out?',
            style: AppTextStyles.h5,
            textAlign: TextAlign.center,
          ),
          actionsPadding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 28,
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Batal', style: AppTextStyles.buttonMedium),
                    ),
                  ),
                ),
                const SizedBox(width: 11),
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: AppColors.error,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        // Navigate ke splash/login
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Text(
                        'Yakin',
                        style: AppTextStyles.buttonMedium.copyWith(
                          color: AppColors.error,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
