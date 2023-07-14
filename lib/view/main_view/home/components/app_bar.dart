import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:post/core/constants/assets/app_icon.dart';

import '../../../../core/constants/app_color.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 56.h,
      backgroundColor: AppColor.cFFFFFF,
      elevation: 0,
      title: SvgPicture.asset(
        AppIcon.logo,
        height: 24.h,
        width: 64.44.w,
      ),
      actions: [
        IconButton(
          onPressed: (){
            context.push('/CreatePostPage');
          },
          icon: SvgPicture.asset(
            AppIcon.appBarAdd,
            height: 32.h,
            width: 32.w,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size(1.sw, kToolbarHeight);
}
