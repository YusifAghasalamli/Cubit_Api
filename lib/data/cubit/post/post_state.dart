import 'package:to_do/data/models/remote/post_res_model.dart';

abstract class PostState {}

class PostInit extends PostState {}

class PostLoading extends PostState {}

class PostFetched extends PostState {
  PostResModel? data;
  PostFetched(this.data);
}

class PostError extends PostState {
  String? error;
  PostError({this.error});
}
