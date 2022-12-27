import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final bool taskCompleated;
  final String title;
  final Function(bool?) onChanged;

  const Tile(
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
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleated,
              onChanged: onChanged,
              checkColor: Theme.of(context).primaryColor,
              activeColor: Theme.of(context).colorScheme.secondary,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
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
