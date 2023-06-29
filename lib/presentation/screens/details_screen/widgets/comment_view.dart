import 'package:flutter/material.dart';
import 'package:to_do/data/models/remote/comment_res_model.dart';
import 'package:to_do/presentation/screens/details_screen/widgets/comment_widget.dart';

class CommentView extends StatelessWidget {
  final List<CommentResModel> comments;
  const CommentView(this.comments, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return CommentWidget(comment: comment);
      },
    );
  }
}
