class todosModel
{
  int? id,userId;
  String? title;
  bool? completed;

  todosModel({this.id, this.userId, this.title, this.completed});

  todosModel fromTodos(Map m5)
  {
    id = m5['id'];
    userId = m5['userId'];
    title = m5['title'];
    completed = m5['completed'];

    todosModel t1 = todosModel(title: title,id: id,userId: userId,completed: completed);

    return t1;
  }
}