import 'package:do_an/controller/home_nav_controller.dart';
import 'package:do_an/pages/account/account_page.dart';
import 'package:do_an/pages/cart/cart_page.dart';
import 'package:do_an/pages/home/home_page.dart';
import 'package:do_an/pages/sale/sale_page.dart';
import 'package:do_an/pages/search/search_page.dart';
import 'package:do_an/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeNavigate extends GetView<HomeNavController> {
  const HomeNavigate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeNavController>(
        init: HomeNavController(),
        builder: (data) => WillPopScope(
          onWillPop: () async {
            if (data.currentIndex != 0) {
              data.changeTabIndex(0);
            } else {
              SystemNavigator.pop();
              return false;
            }
            return false;
          },
          child: Scaffold(
            body: IndexedStack(
              index: data.currentIndex,
              children: const [
                HomePage(),
                SearchPage(),
                CartPage(),
                SalePage(),
                AccountPage()
              ],
            ),
            bottomNavigationBar: Container(
              decoration:  BoxDecoration(
                border: Border(top: BorderSide(color: ColorUtils.colorText,width: 1)),
                color: Colors.white,
              ),
              child: BottomNavigationBar(
                elevation: 0,
                currentIndex: data.currentIndex,
                onTap: (index) {
                  data.changeTabIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon_navigator/Home.svg',color:ColorUtils.colorText),
                    label: 'Home',
                    activeIcon: SvgPicture.asset(
                      'assets/images/icon_navigator/Home.svg',
                      color: ColorUtils.colorPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon_navigator/Search.svg',color:ColorUtils.colorText),
                    label: 'Search',
                    activeIcon: SvgPicture.asset(
                      'assets/images/icon_navigator/Search.svg',
                      color: ColorUtils.colorPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon_navigator/Cart.svg',color:ColorUtils.colorText),
                    label: 'Cart',
                    activeIcon: SvgPicture.asset(
                      'assets/images/icon_navigator/Cart.svg',
                      color: ColorUtils.colorPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon_navigator/Sale.svg',color:ColorUtils.colorText),
                    label: 'Sale',
                    activeIcon: SvgPicture.asset(
                      'assets/images/icon_navigator/Sale.svg',
                      color: ColorUtils.colorPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/icon_navigator/Account.svg',color:ColorUtils.colorText ,),
                    label: 'Account',
                    activeIcon: SvgPicture.asset(
                      'assets/images/icon_navigator/Account.svg',
                      color: ColorUtils.colorPrimary,
                    ),
                  ),
                ],
                backgroundColor: Colors.transparent,
                selectedItemColor: ColorUtils.colorPrimary,
                showUnselectedLabels: true,
                selectedFontSize: 12,
                unselectedItemColor: ColorUtils.colorText,
                showSelectedLabels: true,
                type: BottomNavigationBarType.fixed,
              ),
            ),
          ),
        ));
  }
}


