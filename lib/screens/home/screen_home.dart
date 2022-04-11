import 'package:flutter/material.dart';
import 'package:money_management/screens/category/screen_category.dart';
import 'package:money_management/screens/home/widgets/bottom_navigation.dart';
import 'package:money_management/screens/transactions/screen_transactions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    TransactionScreen(),
    CategoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("MONEY MANAGER"),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: selectedIndexNotifier,
              builder: (BuildContext context, int updatedIndex, _) {
                return _pages[updatedIndex];
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print("Add Transaction");
          } else {
            print("Add Category");
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
