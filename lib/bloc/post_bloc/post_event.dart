part of 'post_bloc.dart';

@immutable
sealed class PostEvent {}

final class ShowPostsEvent extends PostEvent {}
