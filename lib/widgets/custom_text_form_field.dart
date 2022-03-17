import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color_utils.dart';

Widget customTextFormField(
    {required String title,
      required Icon icon,
      String? Function(String?)? validator,
      TextEditingController? controller,
      TextInputType? textInputType
    }) {
  return SizedBox(
    height: 50,
    width: Get.width,
    child: TextFormField(
      maxLines: 1,
      style: const TextStyle(fontSize: 16),
      validator: validator,
      controller: controller,
      autofocus: false,
      keyboardType:textInputType,
      decoration: InputDecoration(
        hintText: title,
        contentPadding: const EdgeInsets.all(0),
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorUtils.colorText, width: 0.3)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorUtils.colorPrimary, width: 1)),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1)),
        prefixIcon: icon,
      ),
    ),
  );
}