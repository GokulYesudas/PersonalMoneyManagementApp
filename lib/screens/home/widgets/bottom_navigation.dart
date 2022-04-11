import 'package:flutter/material.dart';
import 'package:money_management/screens/home/screen_home.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey[350],
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            HomeScreen.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories')
          ],
        );
      },
    );
  }
}
