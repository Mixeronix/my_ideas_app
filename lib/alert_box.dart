import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      content: SizedBox(
        height: 200,
        width: 1600,
        child: Column(
          children: [
            const TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Title"),
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
