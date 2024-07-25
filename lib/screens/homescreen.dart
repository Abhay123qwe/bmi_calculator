import 'package:bmi_calculator/components/ageselector.dart';
import 'package:bmi_calculator/components/heightselector.dart';
import 'package:bmi_calculator/components/primarybutton.dart';
import 'package:bmi_calculator/components/ractbutton.dart';
import 'package:bmi_calculator/components/themechange.dart';
import 'package:bmi_calculator/components/weightselector.dart';
import 'package:bmi_calculator/controllers/bmicontroller.dart';
import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:bmi_calculator/screens/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ThemeController themeController = Get.put(ThemeController());
  Bmicontroller bmicontroller = Get.put(Bmicontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const ThemeChange(),
              Row(
                children: [
                  Text(
                    "Welcom 😊",
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "BMI Calculator ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  PrimaryButton(
                    icon: Icons.male,
                    btnname: "MALE",
                    onpress: () {
                      bmicontroller.genderHandle("MALE");
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  PrimaryButton(
                    icon: Icons.female,
                    btnname: "FEMALE",
                    onpress: () {
                      bmicontroller.genderHandle("FEMALE");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelector(),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeightSelector(),
                        SizedBox(
                          height: 30,
                        ),
                        AgeSelector()
                      ],
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MyRactbutton(
                  onpress: () {
                    bmicontroller.bmicalculator();
                    Get.to(() => const Resultpage());
                  },
                  btnname: "Lets Go",
                  icon: Icons.done_all_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
