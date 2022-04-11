import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return const Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(radius: 50, child: Text("  19\nApril")),
              title: Text("Rs 1000"),
              subtitle: Text("Travel"),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(height: 10);
        },
        itemCount: 10);
  }
}
