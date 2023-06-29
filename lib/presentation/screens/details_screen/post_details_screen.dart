import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/post/post_cubit.dart';
import 'package:to_do/data/cubit/post/post_state.dart';
import 'package:to_do/presentation/screens/details_screen/widgets/post_widget.dart';
// import 'package:to_do/presentation/widgets/custom_app_bar.dart';

class PostDetailScreen extends StatelessWidget {
  final int id;
  const PostDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("Post: $id"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) {
            if (state is PostInit) {
              return const Center(
                  child: Text('Press the button to fetch data'));
            } else if (state is PostLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            } else if (state is PostFetched) {
              return PostWidget(state.data!);
            } else if (state is PostError) {
              return Center(
                child: Text(state.error ?? "Unkown error"),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
