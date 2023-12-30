import 'dart:convert';

import 'package:bloc_state_management/infinitylist/bloc/post_event.dart';
import 'package:bloc_state_management/infinitylist/bloc/post_state.dart';
import 'package:bloc_state_management/infinitylist/model/post_response.dart';
import 'package:dep_management/bloc.dart';
import 'package:http/http.dart' as http;

class PostBloc extends Bloc<PostEvent, PostState>{
  final http.Client httpClient;
  final _postLimit = 10;

  PostBloc({required this.httpClient}):super(const PostState()){
    on<PostFetched>(_onPostFetched);
  }

  Future<void> _onPostFetched(PostEvent event, Emitter<PostState> emit)async{
    if (state.hasReachedMax) return;
    try{

      if(state.status == PostStatus.initial){
        final posts = await _fetchPosts();
        return emit(state.copyWith(
          status: PostStatus.success,
          posts: posts,
          hasReachedMax: false,
        ));
      }

      final posts = await _fetchPosts(state.posts.length);
      if(posts.isEmpty){
        emit(state.copyWith(hasReachedMax: true));
      }else{
        emit(
            state.copyWith(
                status: PostStatus.success,
                posts: List.of(state.posts)..addAll(posts),
                hasReachedMax: false
            )
        );
      }
    }catch(_){
      emit(state.copyWith(status: PostStatus.failure));
    }

  }

  Future<List<PostResponse>> _fetchPosts([int startIndex = 0]) async {
    final response = await httpClient.get(
      Uri.https(
        'jsonplaceholder.typicode.com',
        '/posts',
        <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
      ),
    );
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      return body.map((dynamic json) {
        final map = json as Map<String, dynamic>;
        return PostResponse(
          id: map['id'] as int,
          title: map['title'] as String,
          body: map['body'] as String,
        );
      }).toList();
    }
    throw Exception('error fetching posts');
  }


}