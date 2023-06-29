import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/postlist/post_list_cubit.dart';
// import 'package:to_do/data/bloc/postlist/post_list_event.dart';
import 'package:to_do/data/cubit/postlist/post_list_state.dart';
import 'package:to_do/presentation/screens/home_screen/widgets/post_list_view.dart';
// import 'package:to_do/presentation/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text("ToDo"),
        backgroundColor: Colors.amber,
      ),
      body: BlocBuilder<PostListCubit, PostListState>(
        builder: (context, state) {
          if (state is PostListInit) {
            return const Center(child: Text('Press the button to fetch data'));
          } else if (state is PostListLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else if (state is PostListFetched) {
            return PostListView(posts: state.data ?? []);
          } else if (state is PostListError) {
            return Center(
              child: Text(state.error ?? "Unkown error"),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<PostListCubit>().mapFetchListEventToState();
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
