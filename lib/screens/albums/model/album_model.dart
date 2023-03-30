class albumModel
{
    int? userId,id;
    String? title;

    albumModel({this.userId, this.id, this.title});

    albumModel fromAlbum(Map m2)
    {
      userId = m2['userId'];
      id = m2['id'];
      title = m2['title'];

      albumModel a1 = albumModel(userId: userId,title: title,id: id);

      return a1;
    }
}