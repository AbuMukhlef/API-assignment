import 'package:api_assignment/model/posts_model.dart';
import 'package:api_assignment/networking/api_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  ApiMixin api = ApiMixin();
  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) async {
      List<PostsModel> allPosts = await api.displayPostsByUserId();
      emit(ShowPostsState(allPosts: allPosts));
    });
  }
}
