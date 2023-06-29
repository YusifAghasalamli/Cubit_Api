import 'package:flutter/material.dart';
import 'package:to_do/data/models/remote/comment_res_model.dart';

class CommentWidget extends StatelessWidget {
  final CommentResModel comment;
  const CommentWidget({super.key, required this.comment});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Comment ID: ${comment.id}',
            //   style: const TextStyle(
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(height: 4),
            Text(
              'Name: ${comment.name}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Email: ${comment.email}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(comment.body),
          ],
        ),
      ),
    );
  }
}
