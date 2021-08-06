import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50),
            color: Colors.black26,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(color: Colors.grey),
                            margin: EdgeInsets.fromLTRB(2, 22, 2, 10),
                          ),
                          Text(
                            '배성현',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            margin: EdgeInsets.fromLTRB(2, 20, 2, 6),
                          ),
                          Text(
                            '배성현',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(color: Colors.grey),
                              margin: EdgeInsets.fromLTRB(2, 22, 2, 10)),
                          Text(
                            '키즈',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.03),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          margin: EdgeInsets.fromLTRB(10, 22, 10, 10),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 35,
                            ),
                          ),
                        ),
                        Text(
                          '프로필 추가',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 180,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.edit_outlined,
                          size: 20,
                          color: Colors.white70,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                        ),
                        Text(
                          '프로필 관리',
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.card_giftcard),
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                    ),
                    Text(
                      '친구들에게 Netflix 무료 이용 혜택을 선물하세요.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '가족과 친구들에게 이 링크를 공유하여 함께 Netflix를 즐기세요.',
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
