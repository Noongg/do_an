import 'package:do_an/routes/routes.dart';
import 'package:do_an/utils/color_utils.dart';
import 'package:do_an/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/text_bold.dart';
import '../../widgets/text_light.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  String validateMobile(String? value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value!.isEmpty) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return "";
  }

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
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
                height: Get.height,
                width: Get.width,
                padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/IconApp2.svg'),
                    const SizedBox(height: 20,),
                    textBold(text: 'Let’s Get Started', color: ColorUtils.colorTitle, fontSize: 16),
                    const SizedBox(height: 5,),
                    textLight(text: 'Create an new account', color: ColorUtils.colorTitle, fontSize: 12),
                    const SizedBox(height: 20,),
                    Form(child: Column(
                      children: [
                        customTextFormField(title: "Full Name", icon: const Icon(Icons.person) ),
                        const SizedBox(height: 20,),
                        customTextFormField(title: "Your Phone", icon: const Icon(Icons.phone),validator: validateMobile),
                        const SizedBox(height: 20,),
                        customTextFormField(title: "Address", icon: const Icon(Icons.location_on_outlined)),

                      ],
                    )),
                    const SizedBox(height: 30,),
                    customButton(text: "Sign Up", callback: (){}),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textLight(text: "Have a account?", color: ColorUtils.colorText, fontSize: 12),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(Routes.LOGIN_PAGE);
                          },
                          child: textBold(text: " Sign In", color: ColorUtils.colorPrimary, fontSize: 14),
                        )
                      ],
                    ))
                  ],
                )
            ),
          ),
        )
    );
  }
}
