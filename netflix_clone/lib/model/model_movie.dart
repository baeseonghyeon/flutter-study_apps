class Movie {
  final String title;
  final String description;
  final String keyword;
  final String posterUrl;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        description = map['description'],
        keyword = map['keyword'],
        posterUrl = map['posterUrl'],
        like = map['like'];

  @override
  String toString() => "Movie<$title:$keyword>";
}
