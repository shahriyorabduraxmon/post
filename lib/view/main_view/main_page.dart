import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:post/view/main_view/category/category_page.dart';
import 'package:post/view/main_view/notification/notification_page.dart';
import 'package:post/view/main_view/profile/profile_page.dart';
import 'package:post/view/main_view/security/security_page.dart';

import '../../core/constants/assets/app_icon.dart';
import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final selectedIndex = ValueNotifier<int>(0);

  var pages = [
    const HomePage(),
    const CategoryPage(),
    const SecurityPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, count, _) {
          return pages[selectedIndex.value];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, count, _) {
          return BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: selectedIndex.value,
            onTap: (index) {
              selectedIndex.value = index;
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: 'home',
                  icon: SvgPicture.asset(
                    AppIcon.homeActive,
                    height: 24.r,
                    width: 24.r,
                  )),
              BottomNavigationBarItem(
                label: 'category',
                icon: SvgPicture.asset(
                  AppIcon.category,
                  height: 24.r,
                  width: 24.r,
                ),
              ),
              BottomNavigationBarItem(
                  label: 'security',
                  icon: SvgPicture.asset(
                    AppIcon.lock,
                    height: 24.r,
                    width: 24.r,
                  )),
              BottomNavigationBarItem(
                  label: 'notification',
                  icon: SvgPicture.asset(
                    AppIcon.notification,
                    height: 24.r,
                    width: 24.r,
                  )),
              BottomNavigationBarItem(
                  label: 'profile',
                  icon: Image.asset(
                    AppIcon.profile,
                    height: 24.r,
                    width: 24.r,
                  )),
            ],
          );
        },
      ),
    );
  }
}