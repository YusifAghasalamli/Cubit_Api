class CommentResModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CommentResModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommentResModel.fromJson(Map<String, dynamic> json) =>
      CommentResModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
