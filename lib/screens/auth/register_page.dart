import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sygara_app/screens/auth/login_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
import 'package:sygara_app/widgets/form_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final _formKey = GlobalKey<FormState>();

  // Temporary controllers untuk UI
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            // Logo
            Center(child: Image.asset('assets/logo.png', height: 70)),
            const SizedBox(height: 15),
            // Title
            Text('Daftar', style: AppTextStyles.h1),
            const SizedBox(height: 5),
            Text(
              'Buat akun untuk mulai belanja',
              style: AppTextStyles.bodyLarge,
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Form Nama Lengkap
                  FormInput(
                    controller: _nameController,
                    label: "Nama Lengkap",
                    hintText: "cth. Ahmad Fulan",
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama lengkap tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  // Form Nomor Telepon
                  FormInput(
                    controller: _phoneController,
                    label: "Nomor Telepon",
                    hintText: "cth. 628xxxxxxxx",
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nomor telepon tidak boleh kosong";
                      }
                      if (value.length < 10) {
                        return "Nomor telepon minimal 10 digit";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  // Form Email
                  FormInput(
                    controller: _emailController,
                    label: "Email",
                    hintText: "cth. example@email.com",
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
                  const SizedBox(height: 10),
                  // Form Buat Password
                  FormInput(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Buat Password",
                    hintText: "***************",
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
                  const SizedBox(height: 10),
                  // Form Confirm Password
                  FormInput(
                    controller: _confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                      icon: Icon(
                        _obscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    label: "Konfirmasi Password",
                    hintText: "***************",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Konfirmasi password tidak boleh kosong";
                      }
                      if (value != _passwordController.text) {
                        return "Password tidak cocok";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Button Daftar
            SizedBox(
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: Text('Daftar', style: AppTextStyles.buttonMedium),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah punya akun?', style: AppTextStyles.bodyLarge),
                InkWell(
                  onTap: () {
                    Get.to(() => const LoginPage());
                  },
                  borderRadius: BorderRadius.circular(4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    child: Text(
                      ' Masuk',
                      style: AppTextStyles.bodyLarge.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              textAlign: TextAlign.center,
              '*Informasi pengguna untuk keperluan pengiriman \n'
              'dan promosi terkait produk',
              style: AppTextStyles.bodyLarge.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
