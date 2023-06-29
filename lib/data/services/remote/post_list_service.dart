import 'package:dio/dio.dart';
import 'package:to_do/constants/api_keys.dart';
import 'package:to_do/data/models/remote/post_res_model.dart';
import 'package:to_do/locator.dart';

class PostListService {
  Future<List<PostResModel>> getPostList() async {
    try {
      var dio = locator.get<Dio>();
      var dataList = await dio.get(ApiKeys.postList);
      if (dataList.statusCode! < 400) {
        return [
          ...(dataList.data ?? <Map<String, dynamic>>[])
              .map<PostResModel>((e) => PostResModel.fromJson(e))
        ];
      } else {
        throw Exception(dataList.statusMessage);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
