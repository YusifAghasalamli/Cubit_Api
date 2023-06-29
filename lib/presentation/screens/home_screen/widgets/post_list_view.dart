import 'package:flutter/material.dart';
import 'package:to_do/data/models/remote/post_res_model.dart';

import 'list_tile.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key, required this.posts});
  final List<PostResModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => CustomListTile(
        post: posts.elementAt(index),
      ),
      itemCount: posts.length,
    );
  }
}
