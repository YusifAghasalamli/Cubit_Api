import 'package:dio/dio.dart';
import 'package:to_do/constants/api_keys.dart';
import 'package:to_do/data/models/remote/post_res_model.dart';
import 'package:to_do/locator.dart';

class PostService {
  Future<PostResModel> getPost(int id) async {
    try {
      var dio = locator.get<Dio>();
      var data = await dio.get("${ApiKeys.postList}/$id");
      if (data.statusCode! < 400) {
        return PostResModel.fromJson(data.data ?? {});
      } else {
        throw Exception(data.statusMessage);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
