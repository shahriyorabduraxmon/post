import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post/view/main_view/home/create_post/components/post_image.dart';

import '../../core/constants/app_color.dart';
import '../../core/constants/assets/app_icon.dart';
import '../../core/style/app_text_style.dart';
import '../function/modal_bottom_sheet.dart';

var createPostImage = ValueNotifier<int>(0);

class UploadImage {
  static uploadImage(
      {required BuildContext context,
        required ImagePicker picker}) async {
      modalBottomSheet(
          context: context,
          widget: ImageUploadBottomSheet(
            onTapGallery: () async {
              var path = (await picker.pickImage(source: ImageSource.gallery))!.path;
              onTapFunction(path);
              context.pop();
            },
            onTapCamera: () async {
              var path = (await picker.pickImage(source: ImageSource.camera))!.path;
              onTapFunction(path);
              context.pop();
            },
          )
      );
  }

  static onTapFunction(String path){
      if(imagesList.isNotEmpty){
      imagesList.removeLast();
    }
    imagesList.add(path);
    imagesList.add('');
    createPostImage.value = imagesList.length;
  }
}

class ImageUploadBottomSheet extends StatelessWidget {
  const ImageUploadBottomSheet({
    Key? key,
    required this.onTapCamera,
    required this.onTapGallery,
  }) : super(key: key);

  final Function() onTapGallery;
  final Function() onTapCamera;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 32.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Card(
            title: "camera",
            icon: AppIcon.gallery,
            onTap: onTapCamera,
          ),
          6.verticalSpace,
          _Card(
            title: "gallery",
            icon: AppIcon.gallery,
            onTap: onTapGallery,
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 24.r,
              width: 24.r,
            ),
            12.horizontalSpace,
            Text(
              title,
              style: AppTextStyle.w500.copyWith(
                fontSize: 16.sp,
                color: AppColor.c262626,
              ),
            )
          ],
        ),
      ),
    );
  }
}

