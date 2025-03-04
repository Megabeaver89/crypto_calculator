import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed});

  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.amber,
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
