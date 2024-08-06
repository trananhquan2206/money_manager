import 'package:flutter/material.dart';
import 'package:money_manager/views/home.dart/home_page.dart';
import 'package:money_manager/views/login/login_page.dart';
import 'package:money_manager/widgets/navbar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key, required this.index});
  final int index;
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectIndex = 0;

  static final List<Widget> _screens = [
    const HomePage(),
    const LoginPage(),
    const HomePage(),
    const HomePage()
  ];
  void _onTapIndexIcon(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildNavBarItem('assets/images/home.png', 'Trang chủ', 0),
            buildNavBarItem('assets/images/category.png', 'Phân loại', 1),
            const SizedBox(width: 20),
            buildNavBarItem('assets/images/budget.png', 'Ngân sách', 2),
            buildNavBarItem('assets/images/user.png', 'Tài khoản', 3),
          ],
        ),
      ),
      floatingActionButton: ClipOval(
        child: Material(
          elevation: 10,
          color: Colors.blue,
          child: InkWell(
            child: SizedBox(
              width: 56,
              height: 56,
              child: Image.asset('assets/images/add.png'),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Navbar(),
    );
  }

  Widget buildNavBarItem(String icon, String label, int index) {
    return InkWell(
      onTap: () => _onTapIndexIcon(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 30,
            height: 30,
            color: _selectIndex == index ? Colors.orange : Colors.black,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(
              color: _selectIndex == index ? Colors.orange : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
