import 'package:bmi_calculator/controllers/bmicontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    Bmicontroller bmicontroller = Get.put(Bmicontroller());
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "(Height (CM))",
                  style: TextStyle(
                      fontSize: 15,
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                )
              ],
            ),
            Expanded(
                child: Obx(
              () => SfSlider.vertical(
                min: 50,
                max: 250,
                value: bmicontroller.height.value,
                interval: 25,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 5,
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.5),
                onChanged: (dynamic value) {
                  bmicontroller.height.value = value;
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
