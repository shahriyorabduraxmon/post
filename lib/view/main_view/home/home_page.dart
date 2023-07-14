import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post/core/log_service/log_service.dart';
import 'package:post/data/models/home/post_model.dart';
import 'package:post/view/main_view/home/components/popular_broadcasts.dart';
import 'package:post/view/main_view/home/components/popular_users.dart';

import '../../../bloc/home/posts_bloc.dart';
import '../../../utils/widgets/show_toast.dart';
import 'components/app_bar.dart';
import 'components/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool isPopularBroadcasts = true;
  final bool isPopularUsers = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocProvider(
        create: (context) => PostsBloc()..add(const PostsEvent.fetch()),
        child: BlocBuilder<PostsBloc, PostsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const _LoadingView(),
              loading: () => const _LoadingView(),
              loaded: (data) => _LoadedView(data: data),
              error: (message) => _ErrorView(message: message,), // loadingMoreError: (String message) => SizedBox(),
            );
          },
        ),
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final PostModel data;

  const _LoadedView({required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: data.results!.length,
      separatorBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const PopularBroadcasts();
        }
        if (index == 1) {
          return const PopularUsers();
        }
        return 8.verticalSpace;
      },
      itemBuilder: (BuildContext context, int index) {
        Log.i(index);
        return PostCard(
          data: data.results![index],
        );
      },
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  const _ErrorView({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showStyleToast(context, message);
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
              'Try Again'
          ),
        ),
      ),
    );
  }
}
