import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:post/core/constants/app_color.dart';
import 'package:post/core/constants/assets/app_image.dart';
import 'package:post/utils/widgets/custom_button.dart';

import '../../../../core/constants/assets/app_icon.dart';
import '../../../../core/style/app_text_style.dart';

class PopularUsers extends StatelessWidget {
  const PopularUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 321.h,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      color: AppColor.cFFFFFF,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _Header(),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 12.h
              ),
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index){
                return 8.horizontalSpace;
              },
              itemBuilder: (BuildContext context, int index){
                return const _PopularUsersCard(
                  userName: 'Wade Warren',
                  userImage: AppImages.doctorImage,
                  userJob: 'Doctor',
                  userFollower: '55',
                  userAchievement: '12',
                  userFriends: '45',
                  isSocial: true,
                );
              },
            ),
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
            'Popular Users',
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

class _PopularUsersCard extends StatelessWidget {
  const _PopularUsersCard({
    Key? key,
    this.userName,
    this.userImage,
    this.userJob,
    this.userAchievement,
    this.userFollower,
    this.userFriends,
    this.isSocial = false,
  }) : super(key: key);

  final String? userImage;
  final String? userName;
  final String? userJob;
  final String? userFollower;
  final String? userAchievement;
  final String? userFriends;
  final bool isSocial;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          width: 1.w,
          color: AppColor.cF2F2F2
        )
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h
            ),
            child: Column(
              children: [
                Container(
                  width: 96.r,
                  height: 96.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48.r),
                    image: DecorationImage(
                      image: AssetImage(
                        userImage ?? ''
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                8.verticalSpace,
                isSocial ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userName ?? '',
                      style: AppTextStyle.w600.copyWith(
                          color: AppColor.c262626,
                          fontSize: 14.sp
                      ),
                    ),
                    4.horizontalSpace,
                    SvgPicture.asset(
                      AppIcon.tab,
                      height: 16.r,
                      width: 16.r,
                    )
                  ],
                )
                    : Text(
                  userName ?? '',
                  style: AppTextStyle.w600.copyWith(
                      color: AppColor.c262626,
                      fontSize: 14.sp
                  ),
                ),
                2.verticalSpace,
                Text(
                  userJob ?? '',
                  style: AppTextStyle.w600.copyWith(
                      color: AppColor.c262626,
                      fontSize: 14.sp
                  ),
                ),
                12.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcon.school,
                          height: 24.r,
                          width: 24.r,
                        ),
                        Text(
                          userFollower ?? '',
                          style: AppTextStyle.w600.copyWith(
                              color: AppColor.cFD9644,
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                    16.horizontalSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcon.badge,
                          height: 24.r,
                          width: 24.r,
                        ),
                        Text(
                          userAchievement ?? '',
                          style: AppTextStyle.w600.copyWith(
                              color: AppColor.c706FD3,
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                    16.horizontalSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcon.friendly,
                          height: 24.r,
                          width: 24.r,
                        ),
                        Text(
                          userFriends ?? '',
                          style: AppTextStyle.w600.copyWith(
                              color: AppColor.cFD9644,
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                12.verticalSpace,
                CustomButton(
                  onTap: (){},
                  text: 'Follow',
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: (){},
                icon: SvgPicture.asset(
                  AppIcon.x,
                  height: 16.r,
                  width: 16.r,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

