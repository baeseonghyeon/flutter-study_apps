// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/widget/box_slider.dart';
import 'package:netflix/widget/carousel_slider.dart';
import 'package:netflix/widget/circle_slider.dart';
import 'package:netflix/widget/topBar.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // FirebaseFirestore fireStore = FirebaseFirestore.instance;
  // late Stream<QuerySnapshot> streamData;

  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'description':
          '뜻밖의 돌풍은 행운일까, 불운일까. 패러글라이딩 사고로 북한에 불시착한 재벌 딸. 그곳에서 깐깐한 북한군 장교를 만난다. 이 와중에 피어로느는 낯선 감정은 뭐지?',
      'keyword': '사랑 · 로맨스 · 판타지',
      'posterUrl': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'description': 'description',
      'keyword': '사랑 · 로맨스 · 판타지',
      'posterUrl': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'description': 'description',
      'keyword': '사랑 · 로맨스 · 판타지',
      'posterUrl': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'description': 'description',
      'keyword': '사랑 · 로맨스 · 판타지',
      'posterUrl': 'test_movie_1.png',
      'like': false
    })
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   streamData = fireStore.collection('movie').snapshots();
  // }

  // Widget _fetchData(BuildContext context) {
  //   return StreamBuilder<QuerySnapshot>(
  //     stream: FirebaseFirestore.instance.collection('movie').snapshots(),
  //     builder: (context, snapshot) {
  //       if (!snapshot.hasData) return LinearProgressIndicator();
  //       return _buildBody(context, snapshot.data!.docs);
  //     },
  //   );
  // }

  // Widget _buildBody(BuildContext context
  //     // , List<DocumentSnapshot> snapshot
  //     ) {
  //   // List<Movie> movies = snapshot.map((d) => Movie.fromSnapshot(d)).toList();
  //   return ListView(
  //     padding: EdgeInsets.only(bottom: 20),
  //     children: <Widget>[
  //       Stack(
  //         // alignment: Alignment.topLeft,
  //         children: <Widget>[
  //           CarouselImage(movies: movies),
  //           TopBar(),
  //         ],
  //       ),
  //       CircleSlider(movies: movies),
  //       BoxSlider(movies: movies)
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // return _fetchData(context);

    return ListView(
      padding: EdgeInsets.only(bottom: 20),
      children: <Widget>[
        Stack(
          // alignment: Alignment.topLeft,
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies)
      ],
    );
  }
}
