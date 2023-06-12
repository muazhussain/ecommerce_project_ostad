import 'package:ecommerce_project_ostad/ui/screens/cart_screen.dart';
import 'package:ecommerce_project_ostad/ui/screens/catagory_screen.dart';
import 'package:ecommerce_project_ostad/ui/screens/home_screen.dart';
import 'package:ecommerce_project_ostad/ui/screens/wishlist_screen.dart';
import 'package:ecommerce_project_ostad/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const CatagoryScreen(),
    const CartScreen(),
    const WishlistScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          _selectedIndex = value;
          if (mounted) {
            setState(() {});
          }
        },
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,
        showUnselectedLabels: true,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: 'Wishlist'),
        ],
      ),
    );
  }
}
