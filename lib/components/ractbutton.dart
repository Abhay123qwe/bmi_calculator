import 'package:flutter/material.dart';

class MyRactbutton extends StatelessWidget {
  final VoidCallback onpress;
  final String btnname;
  final IconData icon;
  const MyRactbutton(
      {super.key,
      required this.onpress,
      required this.btnname,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
          padding: const EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Theme.of(context).colorScheme.primaryContainer),
              const SizedBox(
                width: 10,
              ),
              Text(btnname,
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.primaryContainer)),
            ],
          )),
    );
  }
}
