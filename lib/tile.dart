import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final bool taskCompleated;
  final String title;
  Function(bool?) onChanged;

  Tile(
      {super.key,
      required this.taskCompleated,
      required this.title,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
        top: 15,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey[900], borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleated,
              onChanged: onChanged,
              checkColor: Colors.grey[900],
              activeColor: Colors.white,
            ),
            Text(
              title,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: taskCompleated
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
