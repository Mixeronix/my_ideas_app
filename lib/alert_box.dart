import 'package:flutter/material.dart';
import 'package:my_ideas_app/alert_button.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[850],
      content: SizedBox(
        height: 175,
        width: 1600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Title"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AlertButton(title: "Add", onClicked: () {}),
                AlertButton(title: "Cancel", onClicked: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
