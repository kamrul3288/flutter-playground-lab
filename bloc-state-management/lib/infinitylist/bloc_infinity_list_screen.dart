import 'package:bloc_state_management/infinitylist/bloc/post_bloc.dart';
import 'package:bloc_state_management/infinitylist/bloc/post_event.dart';
import 'package:bloc_state_management/infinitylist/bloc/post_state.dart';
import 'package:bloc_state_management/infinitylist/model/post_response.dart';
import 'package:common/common.dart';
import 'package:dep_management/flutter_bloc.dart';
import 'package:flutter/material.dart';


class BlocInfinityListScreen extends StatefulWidget {
  const BlocInfinityListScreen({super.key});

  @override
  State<BlocInfinityListScreen> createState() => _BlocInfinityListScreenState();
}

class _BlocInfinityListScreenState extends State<BlocInfinityListScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Infinity List",

      body: BlocBuilder<PostBloc, PostState>(
        builder: (context,state){
          switch(state.status){
            case PostStatus.initial:
              return const Center(child: CircularProgressIndicator());

            case PostStatus.failure:
              return const Center(child: Text('failed to fetch posts'));

            case PostStatus.success:
              if (state.posts.isEmpty) {
                return const Center(child: Text('no posts'));
              }
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return index >= state.posts.length
                      ? const BottomLoader()
                      : PostListItem(post: state.posts[index]);
                },
                itemCount: state.hasReachedMax
                    ? state.posts.length
                    : state.posts.length + 1,
                controller: _scrollController,
              );
          }
        },
      ),

    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PostBloc>().add(PostFetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),
      ),
    );
  }
}

class PostListItem extends StatelessWidget {
  const PostListItem({required this.post, super.key});

  final PostResponse post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('${post.id}', style: textTheme.bodySmall),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
