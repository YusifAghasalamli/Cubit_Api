import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/comment_list_repository.dart';
import 'comment_list_state.dart';

class CommentListCubit extends Cubit<CommentListState> {
  CommentListCubit() : super(CommentListInit());
  CommentListRepository repo = CommentListRepository();

  void getCommentListData(int id) async {
    emit(CommentListLoading());
    // print("loading");
    try {
      var data = await repo.getCommentList(id);
      emit(CommentListFetched(data));
    } catch (e) {
      // print(e);
      emit(CommentListError(error: e.toString()));
    }
  }
}
