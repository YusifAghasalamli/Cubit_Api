import 'package:dio/dio.dart';
import 'package:to_do/constants/api_keys.dart';
import 'package:to_do/data/models/remote/comment_res_model.dart';
import 'package:to_do/locator.dart';

class CommentListService {
  Future<List<CommentResModel>> getCommentList(int id) async {
    try {
      var dio = locator.get<Dio>();
      var dataList =
          await dio.get(ApiKeys.comment, queryParameters: {"postId": id});
      if (dataList.statusCode! < 400) {
        return [
          ...(dataList.data ?? <Map<String, dynamic>>[])
              .map<CommentResModel>((e) => CommentResModel.fromJson(e))
        ];
      } else {
        throw Exception(dataList.statusMessage);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
