import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post/utils/widgets/app_text_form_field.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/assets/app_image.dart';
import '../../../../../core/style/app_text_style.dart';

class HeaderCreatePost extends StatelessWidget {
  const HeaderCreatePost({
    super.key,
    this.userIcon,
    this.userName,
    this.userJob,
    required this.controller
  });

  final String? userIcon;
  final String? userName;
  final String? userJob;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.h,
      padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40.r,
                height: 40.r,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          AppImages.userIcon,
                        ),
                        fit: BoxFit.cover)),
              ),
              8.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName ?? '',
                    style: AppTextStyle.w500.copyWith(
                        color: AppColor.c262626, fontSize: 16.sp),
                  ),
                  2.5.verticalSpace,
                  Text(
                    userJob ?? '',
                    style: AppTextStyle.w400
                        .copyWith(color: AppColor.c7F92A0, fontSize: 12.sp),
                  ),
                ],
              )
            ],
          ),
          16.verticalSpace,
          Expanded(
            child: AppTextForm(
                controller: controller,
              hintText: 'Share your thoughts. Add photos or hashtags.',
            ),
          )
        ],
      ),
    );
  }
}