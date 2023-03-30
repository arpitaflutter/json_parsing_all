class photosModel {
  int? id, albumId;
  String? title, url, thumbnailUrl;

  photosModel({this.id, this.albumId, this.title, this.url, this.thumbnailUrl});

  photosModel fromPhotos(Map m4) {
    id = m4['id'];
    albumId = m4['albumId'];
    title = m4['title'];
    url = m4['url'];
    thumbnailUrl = m4['thumbnailUrl'];

    photosModel p2 = photosModel(
        id: id,
        title: title,
        url: url,
        albumId: albumId,
        thumbnailUrl: thumbnailUrl);

    return p2;
  }
}
