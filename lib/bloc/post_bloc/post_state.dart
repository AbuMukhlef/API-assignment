part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}

final class ShowPostsState extends PostState {
  final List<PostsModel> allPosts;
  ShowPostsState({required this.allPosts});
}
