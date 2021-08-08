// import 'package:cloud_firestore/cloud_firestore.dart';

class Movie {
  final String title;
  final String description;
  final String keyword;
  final String posterUrl;
  final bool like;
  // final DocumentReference reference;

  Movie.fromMap(Map<String, dynamic> map
      // , {required this.reference}
      )
      : title = map['title'],
        description = map['description'],
        keyword = map['keyword'],
        posterUrl = map['posterUrl'],
        like = map['like'];

  // Movie.fromSnapshot(DocumentSnapshot snapshot)
  //     : this.fromMap(snapshot.data() as Map<String, dynamic>,
  //           reference: snapshot.reference);

  @override
  String toString() => "Movie<$title:$keyword>";
}
