import 'package:do_an/pages/register/register_page.dart';
import 'package:do_an/routes/routes.dart';
import 'package:get/get.dart';

import '../bindings/login_bindings.dart';
import '../pages/login/login_page.dart';
class Pages {
  static final pages = [

    GetPage(
      name: Routes.REGISTER_PAGE,
      page: () => const Register(),
    ),
    GetPage(
      name: Routes.LOGIN_PAGE,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    // GetPage(
    //   name: Routes.CHECK_IN,
    //   binding: CheckInBindings(),
    //   page: () => CheckIn(),
    //   transition: Transition.cupertinoDialog,
    // ),
    // GetPage(
    //   name: Routes.HOMEPAGE,
    //   binding: CheckInBindings(),
    //   page: () => HomePage(),
    //   transition: Transition.cupertinoDialog,
    // ),
    // GetPage(
    //   name: Routes.TIMESHEETS,
    //   page: () => const TimeSheets(),
    // ),
  ];
}
