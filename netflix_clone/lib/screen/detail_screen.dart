import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'dart:ui';

class DetailScreen extends StatefulWidget {
  final Movie? movie;
  DetailScreen({this.movie});

  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  @override
  void initState() {
    super.initState();
    like = widget.movie!.like;
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(80, 35),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/' + widget.movie!.posterUrl),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ]),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      color: Colors.black.withOpacity(0.1),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 70, 0, 20),
                              child: Image.asset(
                                'assets/images/' + widget.movie!.posterUrl,
                                fit: BoxFit.cover,
                              ),
                              // height: 190,
                              width: 150,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.7),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ]),
                            ),
                            Container(
                                width: 300,
                                padding: EdgeInsets.all(7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('99% 일치',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green[300],
                                        )),
                                    Text(
                                      '2019',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white60,
                                      ),
                                    ),
                                    Text(
                                      '15+',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white60,
                                      ),
                                    ),
                                    Text(
                                      '시즌 1개',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                // widget.movie!.title,
                                '매주 토요일 새로운 에피소드 공개',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(7),
                              child: TextButton(
                                onPressed: () {},
                                style: flatButtonStyle,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.play_arrow),
                                    Text('재생'),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                widget.movie!.description,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '출연: 현빈, 손예진, 서지혜\n제작자: 이정효, 박지은',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            makeMenuButton(widget.movie!.like),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  actions: <Widget>[
                    Container(
                      // alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      margin: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // makeMenuButton(widget.movie!.like),
        ],
      ),
    );
  }
}

Widget makeMenuButton(bool like) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: TextButton(
          onPressed: () {},
          child: Container(
            child: Column(
              children: <Widget>[
                like
                    ? Icon(Icons.check, color: Colors.white)
                    : Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                Padding(padding: EdgeInsets.all(3)),
                Text(
                  '내가 찜한 콘텐츠',
                  style: TextStyle(fontSize: 11, color: Colors.white60),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: TextButton(
          onPressed: () {},
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 9),
                  child: Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                Text(
                  '평가',
                  style: TextStyle(fontSize: 11, color: Colors.white60),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: TextButton(
          onPressed: () {},
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 9),
                  child: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                Text(
                  '공유',
                  style: TextStyle(fontSize: 11, color: Colors.white60),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
// }
