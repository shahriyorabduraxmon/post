import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:post/data/models/home/post_model.dart';
import 'package:post/data/service/home/post_service.dart';

import '../../core/log_service/log_service.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(const PostsState.initial()) {
    on<PostsEvent>((event, emit) async{
      await event.when(
        fetch: () async{
          await _fetch(emit);
        },
      );
    });
  }

  Future<void> _fetch(Emitter<PostsState> emit) async{
    emit(const PostsState.loading());
    final response = await PostService.getPosts();
    response.fold((error) {
      emit(PostsState.error(error));
    }, (data)  {
      Log.i(data);
      emit(PostsState.loaded(data));
    });
  }
}
