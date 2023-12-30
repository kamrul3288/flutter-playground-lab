

import 'package:bloc_state_management/infinitylist/model/post_response.dart';
import 'package:dep_management/equatable.dart';

enum PostStatus { initial, success, failure }


final class PostState extends Equatable{
  final List<PostResponse> posts;
  final bool hasReachedMax;
  final PostStatus status;

  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <PostResponse>[],
    this.hasReachedMax = false,
  });

  PostState copyWith({
    PostStatus? status,
    List<PostResponse>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}