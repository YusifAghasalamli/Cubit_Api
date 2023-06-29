import 'package:to_do/data/models/remote/comment_res_model.dart';

abstract class CommentListState {}

class CommentListInit extends CommentListState {}

class CommentListLoading extends CommentListState {}

class CommentListFetched extends CommentListState {
  List<CommentResModel>? data;
  CommentListFetched(this.data);
}

class CommentListError extends CommentListState {
  String? error;
  CommentListError({this.error});
}
