import 'package:bmi_calculator/components/ractbutton.dart';
import 'package:bmi_calculator/controllers/bmicontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({super.key});

  @override
  Widget build(BuildContext context) {
    Bmicontroller bmicontroller = Get.put(Bmicontroller());

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Obx(
                    () => Text(
                      "Your BMI is",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: bmicontroller.colorStatus.value),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 350,
                child: Expanded(
                    child: Obx(
                  () => CircularPercentIndicator(
                    animationDuration: 1500,
                    footer: Text(
                      bmicontroller.bmiStatus.value,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: bmicontroller.colorStatus.value,
                      ),
                    ),
                    radius: 140.0,
                    lineWidth: 30.0,
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: bmicontroller.tempBmi.value / 100,
                    center: Text(
                      "${bmicontroller.BMI.value}%",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: bmicontroller.colorStatus.value,
                      ),
                    ),
                    progressColor: bmicontroller.colorStatus.value,
                    backgroundColor:
                        bmicontroller.colorStatus.value.withOpacity(0.2),
                  ),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primaryContainer),
                padding: const EdgeInsets.all(10),
                child: Text(
                  bmicontroller.message.value,
                  style: TextStyle(
                      color: bmicontroller.colorStatus.value,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyRactbutton(
                  onpress: () {
                    Get.back();
                  },
                  btnname: "Find Out More",
                  icon: Icons.arrow_back_ios_new_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
