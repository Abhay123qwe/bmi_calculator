import 'package:flutter/material.dart';

class SecButton extends StatelessWidget {
  final VoidCallback onpress;
  final IconData icon;
  const SecButton({super.key, required this.onpress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primary),
        child: Icon(icon,
            size: 20, color: Theme.of(context).colorScheme.primaryContainer),
      ),
    );
  }
}
