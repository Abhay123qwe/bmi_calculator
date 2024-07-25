import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bmicontroller extends GetxController {
  // ignore: non_constant_identifier_names
  RxString Gender = "MALE".obs;
  RxInt weight = 50.obs;
  RxInt age = 20.obs;
  RxDouble height = 120.0.obs;
  // ignore: non_constant_identifier_names
  RxString BMI = "".obs;
  RxDouble tempBmi = 0.0.obs;
  RxString bmiStatus = "".obs;
  Rx<Color> colorStatus = const Color(0xff246AFE).obs;
  RxString message = "".obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }

  void bmicalculator() {
    // ignore: non_constant_identifier_names
    var Hmeter = height / 100;
    tempBmi.value = weight / (Hmeter * Hmeter);

    BMI.value = tempBmi.value.toStringAsFixed(1);
    tempBmi.value = double.parse(BMI.value);
    findstatus();
  }

  void findstatus() {
    if (tempBmi.value < 18.5) {
      bmiStatus.value = "UnderWeight";
      colorStatus.value = const Color(0xffFFB800);
      message.value =
          "🌟 Hey there! Your BMI is $BMI and now is the time you need to look after your health because Your health matters, and we’re here to support you. Remember, being underweight doesn’t define you—it’s just one aspect of your well-being. Let’s focus on nourishing your body with nutrient-rich foods, building strength, and celebrating your uniqueness. You’ve got this! 💪🌿";
    }
    if (tempBmi > 18.5 && tempBmi < 24.9) {
      bmiStatus.value = "Normal";
      colorStatus.value = const Color(0xff00ca39);
      message.value =
          "🌟 “Congratulations on maintaining a healthy BMI! Your BMI is $BMI also Remember this, health isn’t just about numbers—it’s about feeling good, having energy, and enjoying life. Keep nourishing your body, staying active, and prioritizing self-care. You’re doing great!” 🌿💪";
    }
    if (tempBmi > 25.0 && tempBmi < 29.9) {
      bmiStatus.value = "OverWeight";
      colorStatus.value = const Color(0xffFF5858);
      message.value =
          "🌟 “Hey there! Your BMI is $BMI so Your health journey matters, and we’re here to support you. Remember, your BMI is just one indicator—it doesn’t define your worth. Let’s focus on positive steps: balanced nutrition, regular activity, and self-care. You’ve got this! 💪🥦”";
    }
    if (tempBmi > 30.0 && tempBmi < 34.9) {
      bmiStatus.value = "OBESE";
      colorStatus.value = const Color(0xffFF0000);
      message.value =
          "🌟 “Hey there! Your BMI is $BMI and there is still time you should look after yourrshelf, and we’re here to support you. Remember, your BMI is just one indicator—it doesn’t define your worth. Let’s focus on positive steps: balanced nutrition, regular activity, and self-care. You’ve got this! 💪🥦”";
    }
    if (tempBmi > 35) {
      bmiStatus.value = "Extremely OBESE";
      colorStatus.value = const Color.fromARGB(255, 0, 13, 255);
      message.value =
          "🌟 “Hey there! Your BMI is $BMI and i think you need to look after youshelf what you become, and we’re here to support you. Remember, your BMI is just one indicator—it doesn’t define your worth. Let’s focus on positive steps: balanced nutrition, regular activity, and self-care. You’ve got this! 💪🥦”";
    }
  }
}
