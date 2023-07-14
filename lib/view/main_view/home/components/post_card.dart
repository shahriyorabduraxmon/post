import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:post/core/constants/app_color.dart';
import 'package:post/core/constants/assets/app_icon.dart';
import 'package:post/core/style/app_text_style.dart';
import 'package:post/data/models/home/post_model.dart';
import 'package:post/data/network/dio/endpoints.dart';
import 'package:post/view/main_view/home/components/function/date_function.dart';

import '../../../../core/log_service/log_service.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.data}) : super(key: key);
  
  final Result data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.cFFFFFF,
      child: Column(
        children: [
          _Header(
            userIcon: data.avatar,
            userName: data.username,
            userJob: data.mainCat,
            time: DateFunction.convertingDate(data.date),
            isSocial: data.isMine,
          ),
          _Post(
            postImage: data.medias!.first.image,
            postDescription: data.text,
            like: data.likesCount,
            comment: data.commentCount,
            createDate: DateFunction.convertingDateToString(data.date),
          ),
          Container(
            height: 1.h,
            color: AppColor.cF2F2F2,
          ),
          const _Buttons()
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    this.userIcon,
    this.userName,
    this.userJob,
    this.time,
    this.isSocial = false,
  });

  final String? userIcon;
  final String? userName;
  final String? userJob;
  final String? time;
  final bool? isSocial;

  @override
  Widget build(BuildContext context) {
    Log.e(userJob);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40.r,
                height: 40.r,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(width: 1.5.w, color: AppColor.cFF5A5F),
                    // image: const DecorationImage(
                    //     image: AssetImage(
                    //       AppImages.userIcon,
                    //     ),
                    //     fit: BoxFit.cover)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: CachedNetworkImage(
                    imageUrl: '${Endpoints.baseUrl}$userIcon',
                    fit: BoxFit.cover,
                    placeholder: (context, url){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    errorWidget: (context, url, _){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ),
              8.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isSocial ?? false
                      ? Row(
                          children: [
                            Text(
                              userName ?? '',
                              style: AppTextStyle.w600.copyWith(
                                  color: AppColor.c262626, fontSize: 14.sp),
                            ),
                            4.horizontalSpace,
                            SvgPicture.asset(
                              AppIcon.tab,
                              height: 16.r,
                              width: 16.r,
                            ),
                          ],
                        )
                      : Text(
                          userName ?? '',
                          style: AppTextStyle.w600.copyWith(
                              color: AppColor.c262626, fontSize: 14.sp),
                        ),
                  2.5.verticalSpace,
                  Row(
                    children: [
                      Text(
                        userJob ?? '',
                        style: AppTextStyle.w300
                            .copyWith(color: AppColor.c262626, fontSize: 12.sp),
                      ),
                      8.horizontalSpace,
                      Container(
                        height: 10.h,
                        width: 1.w,
                        color: AppColor.c7F92A0,
                      ),
                      8.horizontalSpace,
                      Text(
                        time ?? '',
                        style: AppTextStyle.w300
                            .copyWith(color: AppColor.c262626, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcon.more,
              height: 24.r,
              width: 24.r,
            ),
          )
        ],
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({
    this.postImage,
    this.postDescription,
    this.like,
    this.comment,
    this.createDate,
  });

  final String? postImage;
  final String? postDescription;
  final int? like;
  final int? comment;
  final String? createDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        postImage != null
            ? CachedNetworkImage(
          imageUrl: postImage!,
          fit: BoxFit.cover,
          placeholder: (context, url){
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          errorWidget: (context, url, _){
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )
            : const SizedBox(),
        8.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: SizedBox(
            child: Text(
              postDescription ?? '',
              style: AppTextStyle.w400
                  .copyWith(color: AppColor.c262626, fontSize: 12.sp),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            children: [
              Text(
                '${like ?? 0} Likes',
                style: AppTextStyle.w400
                    .copyWith(color: AppColor.c7F92A0, fontSize: 10.sp),
              ),
              12.horizontalSpace,
              Text(
                '${comment ?? 0} Comments',
                style: AppTextStyle.w400
                    .copyWith(color: AppColor.c7F92A0, fontSize: 10.sp),
              ),
              12.horizontalSpace,
              Text(
                '${createDate}y',
                style: AppTextStyle.w400
                    .copyWith(color: AppColor.c7F92A0, fontSize: 10.sp),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcon.like,
                  height: 16.r,
                  width: 16.r,
                ),
                8.horizontalSpace,
                Text(
                  'Like',
                  style: AppTextStyle.w400
                      .copyWith(fontSize: 14.sp, color: AppColor.c7F92A0),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcon.comment,
                  height: 16.r,
                  width: 16.r,
                ),
                8.horizontalSpace,
                Text(
                  'Comment',
                  style: AppTextStyle.w400
                      .copyWith(fontSize: 14.sp, color: AppColor.c7F92A0),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcon.share,
                  height: 16.r,
                  width: 16.r,
                ),
                8.horizontalSpace,
                Text(
                  'Share',
                  style: AppTextStyle.w400
                      .copyWith(fontSize: 14.sp, color: AppColor.c7F92A0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
