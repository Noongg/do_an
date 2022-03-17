import 'package:do_an/utils/color_utils.dart';
import 'package:do_an/widgets/text_bold.dart';
import 'package:do_an/widgets/text_light.dart';
import 'package:do_an/widgets/text_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          body: Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textBold(text: 'Enter your 6-digit code', color: ColorUtils.colorTitle, fontSize: 22),
                const SizedBox(height: 10,),
                textLight(text: "Code", color: ColorUtils.colorText, fontSize: 16),
                const TextField(
                  maxLines: 1,
                  maxLength: 6,
                  style:TextStyle(fontSize: 22) ,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "- - - - - -",
                    hintStyle: TextStyle(fontSize: 22),

                  ),
                ),
                Expanded(child: Align(
                  alignment: Alignment.bottomLeft,
                  child: GestureDetector(
                    onTap: (){},
                    child: textMedium(text: 'Resend Code', color: ColorUtils.colorPrimary, fontSize: 18),
                  ),
                )),
                const Padding(padding: EdgeInsets.only(bottom: 30)),
              ],
            ),
          ),
          floatingActionButton:  FloatingActionButton(
              backgroundColor: ColorUtils.colorPrimary,
              child: const Icon(Icons.arrow_forward_ios),
              onPressed: (){}),
        )
    );
  }
}
