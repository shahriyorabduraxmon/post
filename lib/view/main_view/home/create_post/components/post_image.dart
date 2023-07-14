import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post/core/constants/app_color.dart';
import 'package:post/core/constants/assets/app_icon.dart';
import 'package:post/core/log_service/log_service.dart';
import 'package:post/core/style/app_text_style.dart';

import '../../../../../utils/widgets/image_bottom_sheet.dart';

List<String> imagesList = [];

class PostImage extends StatelessWidget {
  const PostImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    imagesList = [];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: ValueListenableBuilder(
        valueListenable: createPostImage,
        builder: (context, count, _) {
          Log.d(count);
          // Log.e(count.length);
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Add photo',
                style: AppTextStyle.w500
                    .copyWith(color: AppColor.c262626, fontSize: 18.sp),
              ),
              16.verticalSpace,
              imagesList.isEmpty
                  ? const _EmptyCard()
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.r,
                        mainAxisSpacing: 12.r,
                        childAspectRatio: 0.95,
                      ),
                      itemCount: imagesList.length,//count.length,
                      itemBuilder: (BuildContext context, int index) {
                        return index == imagesList.length - 1
                            ? _EmptyCard()
                            : _Card(
                          image: imagesList[index], //count[index],
                          index: index,
                        );
                      },
                    )
            ],
          );
        },
      ),
    );
  }
}

final picker = ImagePicker();

class _EmptyCard extends StatelessWidget {
  const _EmptyCard();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UploadImage.uploadImage(
          context: context,
          picker: picker,
        );
      },
      child: Container(
        height: 160.r,
        width: 160.r,
        decoration: BoxDecoration(
            color: AppColor.cFFFFFF,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(width: 1.w, color: AppColor.cD5E5FB)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcon.gallery,
              height: 32.r,
              width: 32.r,
            ),
            8.horizontalSpace,
            Text(
              'Add Image',
              style: AppTextStyle.w400
                  .copyWith(color: AppColor.c003CC5, fontSize: 16.sp),
            )
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.image, required this.index});

  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.r,
      width: 160.r,
      decoration: BoxDecoration(
        color: AppColor.c262626.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20.r)
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Center(
                child: Image.file(
                    File(image),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  imagesList.removeAt(index);
                  createPostImage.value = imagesList.length;
                },
                icon: SvgPicture.asset(AppIcon.closeXExport),
              )
            ],
          ),
        ],
      ),
    );
  }
}
