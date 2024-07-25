import 'package:bmi_calculator/controllers/bmicontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String btnname;
  final VoidCallback onpress;
  const PrimaryButton(
      {super.key,
      required this.icon,
      required this.btnname,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    Bmicontroller bmicontroller = Get.put(Bmicontroller());
    return Expanded(
      child: InkWell(
          onTap: onpress,
          child: Obx(
            () => Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: bmicontroller.Gender.value == btnname
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primaryContainer),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon,
                      color: bmicontroller.Gender.value == btnname
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    btnname,
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: bmicontroller.Gender.value == btnname
                            ? Theme.of(context).colorScheme.primaryContainer
                            : Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
