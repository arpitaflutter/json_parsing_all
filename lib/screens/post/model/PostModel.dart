class PostModel
{
  int? userId,id;
  String? title,body;

  PostModel({this.userId, this.id, this.title, this.body});

  PostModel fromJson(Map m1)
  {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    body = m1['body'];

    PostModel p1 = PostModel(body: body,id: id,title: title,userId: userId);

    return p1;
  }

}