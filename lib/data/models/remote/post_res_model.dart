class PostResModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostResModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostResModel.fromJson(Map<String, dynamic> json) => PostResModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
