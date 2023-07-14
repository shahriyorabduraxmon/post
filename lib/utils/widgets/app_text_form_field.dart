import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_color.dart';
import '../../core/style/app_text_style.dart';

class AppTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;


  const AppTextForm({
    required this.controller,
    this.hintText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.none,
      maxLines: 5,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        hintText: hintText ?? '',
        border: InputBorder.none,
        contentPadding: REdgeInsets.symmetric(horizontal: 16),
        hintStyle: AppTextStyle.w400.copyWith(fontSize: 12.sp, color: AppColor.c7F92A0),
        labelStyle: AppTextStyle.w400.copyWith(fontSize: 12.sp, color: AppColor.c262626),
      ),
    );
  }
}
