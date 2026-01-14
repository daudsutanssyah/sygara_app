import 'package:flutter/material.dart';
import 'package:sygara_app/screens/cart/cart_page.dart';
import 'package:sygara_app/screens/home/home_screen.dart';
import 'package:sygara_app/screens/order/order_page.dart';
import 'package:sygara_app/screens/profil/profil_page.dart';
import 'package:sygara_app/themes/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final List<Widget> screenList = const [
    HomeScreen(),
    CartPage(),
    OrderPage(),
    ProfilPage(),
  ];

  void itemOnTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: Container(
        height: 78,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowMedium,
              offset: const Offset(0, -8),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-home.png",
                width: 20,
                height: 20,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-home-green.png',
                width: 20,
                height: 20,
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-cart.png",
                width: 20,
                height: 20,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-cart-green.png',
                width: 20,
                height: 20,
              ),
              label: "Keranjang",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-pesanan.png",
                width: 20,
                height: 20,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-pesanan-green.png',
                width: 20,
                height: 20,
              ),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-profil.png",
                width: 20,
                height: 20,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-profil-green.png',
                width: 20,
                height: 20,
              ),
              label: "Profil",
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.textSecondary,
          onTap: itemOnTapped,
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
