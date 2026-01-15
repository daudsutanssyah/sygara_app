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
    // Get screen size for responsive sizing
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenHeight < 600;

    // Responsive sizes
    final iconSize = isSmallScreen ? 18.0 : 20.0;
    final fontSize = isSmallScreen ? 10.0 : 12.0;

    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: Container(
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
                width: iconSize,
                height: iconSize,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-home-green.png',
                width: iconSize,
                height: iconSize,
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-cart.png",
                width: iconSize,
                height: iconSize,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-cart-green.png',
                width: iconSize,
                height: iconSize,
              ),
              label: "Keranjang",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-pesanan.png",
                width: iconSize,
                height: iconSize,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-pesanan-green.png',
                width: iconSize,
                height: iconSize,
              ),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icon/ic-profil.png",
                width: iconSize,
                height: iconSize,
              ),
              activeIcon: Image.asset(
                'assets/icon/ic-profil-green.png',
                width: iconSize,
                height: iconSize,
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
          selectedLabelStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),

          elevation: 0,
        ),
      ),
    );
  }
}
