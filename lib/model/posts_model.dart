class PostsModel {
  PostsModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  late final int userId;
  late final int id;
  late final String title;
  late final String body;
  
  PostsModel.fromJson(Map<String, dynamic> json){
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final dart = <String, dynamic>{};
    dart['userId'] = userId;
    dart['id'] = id;
    dart['title'] = title;
    dart['body'] = body;
    return dart;
  }
}