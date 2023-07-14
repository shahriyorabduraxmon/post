import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post/core/constants/app_color.dart';
import 'package:post/view/main_view/home/create_post/components/header_create_post.dart';
import 'package:post/view/main_view/home/create_post/components/post_image.dart';

import '../../../../core/constants/assets/app_image.dart';
import 'components/app_bar.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {

  final TextEditingController createPostCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CreatePostAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderCreatePost(
              userIcon: AppImages.userIcon,
              userName: 'Shohruh Komilov',
              userJob: 'Content Manager',
              controller: createPostCtr,
            ),
            Container(
              height: 1.h,
              width: double.infinity,
              color: AppColor.c7F92A0,
            ),
            PostImage()
          ],
        ),
      ),
    );
  }
}
