import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  const AccountTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.pink.shade100,
          ),
        );
      },
    );
  }
}
