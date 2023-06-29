import 'package:to_do/data/services/remote/post_service.dart';
import 'package:to_do/locator.dart';

import '../models/remote/post_res_model.dart';

class PostRepository {
  final PostService _service = locator.get<PostService>();
  Future<PostResModel> getPost(int id) async {
    return await _service.getPost(id);
  }
}
