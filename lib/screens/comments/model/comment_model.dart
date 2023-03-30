class commentModel
{
  int? id,postId;
  String? name,email,body;

  commentModel({this.id, this.postId, this.name, this.email, this.body});

  commentModel fromAlbum(Map m3)
  {
    id = m3['id'];
    postId = m3['postId'];
    name = m3['name'];
    email = m3['email'];
    body = m3['body'];

    commentModel c1 = commentModel(id: id,body: body,name: name,email: email,postId: postId);

    return c1;
  }

}