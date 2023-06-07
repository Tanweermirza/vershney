import 'package:flutter/material.dart';
import 'package:vershney/Screens/item_details.dart';

class SecondScreen extends StatefulWidget {
  final int index;
  const SecondScreen({super.key, required this.index});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedIndex = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(237, 143, 3, 1),
        body: _selectedIndex == 0
            ? const Center(child: Text("Back"))
            : _selectedIndex == 1
                ? const ItemDetails()
                : const Center(child: Text("Cart")),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_left_outlined,
                size: 50.0,
              ),
              label: 'Back',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 50.0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 50.0,
              ),
              label: 'Cart',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
