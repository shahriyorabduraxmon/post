import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:post/core/constants/app_color.dart';
import 'package:post/core/constants/assets/app_icon.dart';
import 'package:post/core/constants/assets/app_image.dart';
import 'package:post/core/style/app_text_style.dart';
import 'package:post/utils/widgets/custom_button.dart';

class PopularBroadcasts extends StatelessWidget {
  const PopularBroadcasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h
      ),
      decoration: BoxDecoration(
        color: AppColor.cFFFFFF,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          const _Header(),
          const _DataPart(
            image: AppImages.PopularBroadcastsImage,
            icon: AppImages.PopularBroadcastsIcon,
            title: 'Gift from NVS iPhone',
            company: '"O‘ZBEKISTON TEMIR YO‘LLARI"  АJ SSX',
            type: 'Moda',
            category: 'Education',
            count: '6+',
            time: '12.10.2023 at 15:30',
            usersCount: '1045',
          ),
          Container(
            height: 1.h,
            color: AppColor.cF2F2F2,
          ),
          const _Bottom(
            type: 'Free stream',
          )
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular Broadcasts',
            style: AppTextStyle.w600.copyWith(
              color: AppColor.c262626,
              fontSize: 16.sp
            ),
          ),
          InkWell(
            onTap: (){},
            child: Text(
              'View All',
              style: AppTextStyle.w400.copyWith(
                  color: AppColor.c003CC5,
                  fontSize: 14.sp
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _DataPart extends StatelessWidget {
  const _DataPart({
    this.image,
    this.icon,
    this.title,
    this.company,
    this.type,
    this.category,
    this.count,
    this.time,
    this.usersCount,
});

  final String? image;
  final String? icon;
  final String? title;
  final String? company;
  final String? type;
  final String? category;
  final String? count;
  final String? time;
  final String? usersCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(
            image ?? ''
          ),
          height: 167.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.h
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 77.w,
                height: 72.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(
                      icon ?? ''
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              8.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? '',
                    style: AppTextStyle.w700.copyWith(
                      fontSize: 18.sp,
                      color: AppColor.c262626
                    ),
                  ),
                  Text(
                    company ?? '',
                    style: AppTextStyle.w400.copyWith(
                        fontSize: 12.sp,
                        color: AppColor.c7F92A0
                    ),
                  ),
                  8.verticalSpace,
                  Row(
                    children: [
                      Text(
                        type ?? '',
                        style: AppTextStyle.w400.copyWith(
                            fontSize: 12.sp,
                            color: AppColor.c7F92A0
                        ),
                      ),
                      6.horizontalSpace,
                      Container(
                        height: 4.r,
                        width: 4.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                          color: AppColor.c7F92A0,
                        ),
                      ),
                      6.horizontalSpace,
                      Text(
                        category ?? '',
                        style: AppTextStyle.w400.copyWith(
                            fontSize: 12.sp,
                            color: AppColor.c7F92A0
                        ),
                      ),
                      6.horizontalSpace,
                      Container(
                        height: 4.r,
                        width: 4.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                          color: AppColor.c7F92A0,
                        ),
                      ),
                      6.horizontalSpace,
                      Text(
                        count ?? '',
                        style: AppTextStyle.w400.copyWith(
                            fontSize: 12.sp,
                            color: AppColor.c7F92A0
                        ),
                      ),
                    ],
                  ),
                  11.5.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcon.clock,
                            height: 16.r,
                            width: 16.r,
                          ),
                          4.horizontalSpace,
                          Text(
                            time ?? '',
                            style: AppTextStyle.w400.copyWith(
                                fontSize: 12.sp,
                                color: AppColor.c7F92A0
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcon.twoUser,
                            height: 16.r,
                            width: 16.r,
                          ),
                          4.horizontalSpace,
                          Text(
                            usersCount ?? '',
                            style: AppTextStyle.w400.copyWith(
                                fontSize: 12.sp,
                                color: AppColor.c7F92A0
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({
    this.type
});

  final String? type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Entrance',
                style: AppTextStyle.w300.copyWith(
                    fontSize: 10.sp,
                    color: AppColor.c7F92A0
                ),
              ),
              Text(
                type ?? '',
                style: AppTextStyle.w600.copyWith(
                    fontSize: 16.sp,
                    color: AppColor.c262626
                ),
              ),
            ],
          ),
          CustomButton(
            onTap: (){},
            text: 'Watch',
            height: 32.h,
            width: 130.w,
            radius: 8.r,
          )
        ],
      ),
    );
  }
}
