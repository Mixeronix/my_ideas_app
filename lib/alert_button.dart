import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  final String title;
  final VoidCallback onClicked;

  const AlertButton({
    super.key,
    required this.title,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onClicked,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, bottom: 12, right: 18, left: 18),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, color: Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
}
