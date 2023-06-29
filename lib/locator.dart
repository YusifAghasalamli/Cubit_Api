import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:to_do/data/services/remote/comment_list_service.dart';
import 'package:to_do/data/services/remote/post_list_service.dart';
import 'data/services/remote/post_service.dart';

var locator = GetIt.I;

void setUpLocator() {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<PostListService>(() => PostListService());
  locator.registerLazySingleton<PostService>(() => PostService());
  locator.registerLazySingleton<CommentListService>(() => CommentListService());
}
