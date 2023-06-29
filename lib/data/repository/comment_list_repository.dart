import 'package:to_do/data/models/remote/comment_res_model.dart';
import 'package:to_do/data/services/remote/comment_list_service.dart';
import 'package:to_do/locator.dart';

class CommentListRepository {
  final CommentListService _service = locator.get<CommentListService>();
  Future<List<CommentResModel>> getCommentList(int id) async {
    return await _service.getCommentList(id);
  }
}
