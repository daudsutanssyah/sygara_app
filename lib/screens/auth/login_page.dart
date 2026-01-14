import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sygara_app/screens/navigation/bottom_nav_bar.dart';
import 'package:sygara_app/screens/profil/reset_password_page.dart';
import 'package:sygara_app/screens/auth/register_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 53),
            Center(child: Image.asset('assets/logo.png')),
            const SizedBox(height: 118),
            Text("Masuk", style: AppTextStyles.h1),
            const SizedBox(height: 8),
            Text(
              "Masuk ke akun terdaftar untuk lanjut",
              style: AppTextStyles.bodyLarge,
            ),
            const SizedBox(height: 34),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Form Email
                  _buildTextField(
                    label: 'Email',
                    hint: 'cth. example@email.com',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email tidak boleh kosong";
                      }
                      if (!GetUtils.isEmail(value)) {
                        return "Format email tidak valid";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 13),
                  // Form Password
                  _buildTextField(
                    label: 'Password',
                    hint: '***************',
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password tidak boleh kosong";
                      }
                      if (value.length < 6) {
                        return "Password minimal 6 karakter";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 13),
                  // Lupa Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => const ResetPasswordPage());
                        },
                        borderRadius: BorderRadius.circular(4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          child: Text(
                            "Lupa Password?",
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 42),
                  // Button Masuk
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottomNavBar(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Masuk', style: AppTextStyles.buttonMedium),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum punya akun?', style: AppTextStyles.bodyLarge),
                InkWell(
                  onTap: () {
                    Get.to(() => const RegisterPage());
                  },
                  borderRadius: BorderRadius.circular(4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    child: Text(
                      ' Daftar',
                      style: AppTextStyles.bodyLarge.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    required TextEditingController controller,
    required String? Function(String?) validator,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.h5),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.secondary,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primary, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.error, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.error, width: 2),
            ),
            hintText: hint,
            hintStyle: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.textSecondary,
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
