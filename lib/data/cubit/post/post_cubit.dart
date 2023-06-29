import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/data/cubit/post/post_state.dart';
import 'package:to_do/data/repository/post_repository.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInit());
  PostRepository repo = PostRepository();

  void getPostData(int id) async {
    emit(PostLoading());
    // print("loading");
    try {
      var data = await repo.getPost(id);
      emit(PostFetched(data));
    } catch (e) {
      // print(e);
      emit(PostError(error: e.toString()));
    }
  }
}
