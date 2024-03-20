class Album {
  final image;
  final title;

  Album({required this.image, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(title: json['title'], image: json['thumbnailUrl']);
  }
}
