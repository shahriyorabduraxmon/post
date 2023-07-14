import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_color.dart';
import '../../core/style/app_text_style.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({
    Key? key,
    required this.onTap,
    this.height,
    this.width,
    this.radius,
    this.textColor,
    required this.text,
    this.textSize,
  }) : super(key: key);

  final Function() onTap;
  final double? height;
  final double? width;
  final double? radius;
  final Color? textColor;
  final String text;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 32.h,
        width: width ?? 143.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 4.r),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.c1DA1F2,
              AppColor.c003CC5
            ]
          )
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.w500.copyWith(
              fontSize: textSize ?? 12.sp,
              color: textColor ?? AppColor.cFFFFFF
            ),
          ),
        ),
      ),
    );
  }
}
