import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/screen/detail_screen.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie>? movies;
  CarouselImage({this.movies});

  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  List<Movie>? movies;
  List<Widget>? images;
  List<String>? keywords;
  List<bool>? likes;

  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    // 이미지
    images = movies
        ?.map((m) => Container(
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/' + m.posterUrl,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ))
        .toList();
    keywords = movies?.map((m) => m.keyword).toList();
    likes = movies?.map((m) => m.like).toList();
    _currentKeyword = keywords![0];
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(80, 30),
    padding: EdgeInsets.symmetric(horizontal: 14.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.white,
  );

  final fontStyle = TextStyle(
    fontSize: 11,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          CarouselSlider(
            items: images,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                  _currentKeyword = keywords![_currentPage];
                });
              },
              viewportFraction: 1,
              height: 400,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
            child: Text(
              _currentKeyword,
              style: fontStyle,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      likes![_currentPage]
                          ? IconButton(
                              onPressed: () {}, icon: Icon(Icons.check))
                          : IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      Text(
                        '내가 찜한 콘텐츠',
                        style: fontStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                        ),
                        Text(
                          '재생',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute<Null>(
                                fullscreenDialog: true,
                                builder: (BuildContext context) {
                                  return DetailScreen(
                                    movie: movies![_currentPage],
                                  );
                                }));
                          },
                          icon: Icon(Icons.info_outline)),
                      Text(
                        '정보',
                        style: fontStyle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: makeIndicator(movies!, _currentPage),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeIndicator(List list, int _currentPage) {
  List<Widget> results = [];
  for (var i = 0; i < list.length; i++) {
    results.add(Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == i
              ? Color.fromRGBO(255, 255, 255, 0.9)
              : Color.fromRGBO(255, 255, 255, 0.4)),
    ));
  }

  return results;
}
