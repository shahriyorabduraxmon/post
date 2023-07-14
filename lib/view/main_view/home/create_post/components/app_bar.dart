import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:post/core/style/app_text_style.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/assets/app_icon.dart';

class CreatePostAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CreatePostAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 56.h,
      backgroundColor: AppColor.cFFFFFF,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  context.pop();
                },
                child: SvgPicture.asset(
                  AppIcon.closeX,
                  height: 24.r,
                  width: 24.r,
                ),
              ),
              Text(
                'Create Post',
                style: AppTextStyle.w500.copyWith(
                    fontSize: 16.sp,
                    color: AppColor.c262626
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){},
            child: Text(
              'Publish',
              style: AppTextStyle.w500.copyWith(
                  fontSize: 18.sp,
                  color: AppColor.c003CC5
              ),
            ),
          ),
        ],
      ),
      leadingWidth: 0,
    );
  }

  @override
  Size get preferredSize => Size(1.sw, kToolbarHeight);
}
