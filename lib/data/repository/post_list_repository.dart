import 'package:to_do/data/services/remote/post_list_service.dart';
import 'package:to_do/locator.dart';

import '../models/remote/post_res_model.dart';

class PostListRepository {
  final PostListService _service = locator.get<PostListService>();
  Future<List<PostResModel>> getPostList() async {
    return await _service.getPostList();
  }
}
