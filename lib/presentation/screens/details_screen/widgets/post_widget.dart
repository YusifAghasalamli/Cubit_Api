import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/commentlist/comment_list_cubit.dart';
import 'package:to_do/data/cubit/commentlist/comment_list_state.dart';
import 'package:to_do/data/models/remote/post_res_model.dart';
import 'package:to_do/presentation/screens/details_screen/widgets/comment_view.dart';

class PostWidget extends StatelessWidget {
  final PostResModel post;
  const PostWidget(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Post ID: ${post.id}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "${post.title}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "${post.body}",
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
        const Text(
          'Comments:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: BlocBuilder<CommentListCubit, CommentListState>(
            builder: (context, state) {
              if (state is CommentListInit) {
                return const Center(
                    child: Text('Press the button to fetch data'));
              } else if (state is CommentListLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              } else if (state is CommentListFetched) {
                return CommentView(state.data!);
              } else if (state is CommentListError) {
                return Center(
                  child: Text(state.error ?? "Unkown error"),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ],
    );
  }
}
