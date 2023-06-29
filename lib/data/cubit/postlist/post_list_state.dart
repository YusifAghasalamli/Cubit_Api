import 'package:to_do/data/models/remote/post_res_model.dart';

abstract class PostListState {}

class PostListInit extends PostListState {}

class PostListLoading extends PostListState {}

class PostListFetched extends PostListState {
  List<PostResModel>? data;
  PostListFetched(this.data);
}

class PostListError extends PostListState {
  String? error;
  PostListError({this.error});
}
