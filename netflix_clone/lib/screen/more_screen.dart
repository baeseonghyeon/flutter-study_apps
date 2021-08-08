import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            margin: EdgeInsets.fromLTRB(2, 22, 2, 10),
                          ),
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
                  child: GestureDetector(
                    onTap: () {
                      print('click!');
                    },
                    child: Linkify(
                      onOpen: (link) async {
                        if (await canLaunch('https://www.google.co.kr/')) {
                          await launch('https://www.google.co.kr/');
                        }
                      },
                      text: '이용약관',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white38,
                          decoration: TextDecoration.underline),
                    ),
                    // child: Text(
                    //   '이용약관',
                    //   style: TextStyle(
                    //       fontSize: 13,
                    //       color: Colors.white38,
                    //       decoration: TextDecoration.underline),
                    // ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: 40,
                  padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          readOnly: true,
                          initialValue:
                              "https://www.netflix.com/kr/n/6A64FFE-1",
                          style: TextStyle(fontSize: 13, height: 11),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(60, 30),
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.0)),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          '링크 복사',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                    children: <Widget>[
                      // 카카오톡 공유 버튼
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(color: Colors.grey),
                                  margin: EdgeInsets.only(bottom: 6),
                                ),
                                Text(
                                  '카카오톡',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // 페이스북 공유 버튼
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(color: Colors.grey),
                                  margin: EdgeInsets.only(bottom: 6),
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // G메일 공유 버튼
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.topCenter,
                            ),
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(color: Colors.grey),
                                  margin: EdgeInsets.only(bottom: 6),
                                ),
                                Text(
                                  'Gmail',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // 공유 더보기 버튼
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          width: 20,
                          alignment: Alignment.center,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.topCenter,
                            ),
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 30,
                                  height: 30,
                                  margin: EdgeInsets.only(bottom: 6),
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '더보기',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                // 내가 찜한 콘텐츠
                InkWell(
                  onTap: () {
                    print("clickButton");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.white60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                            ),
                            Text(
                              '내가 찜한 콘텐츠',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 20,
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                ),
                // 앱 설정
                InkWell(
                  onTap: () {
                    print("clickButton");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.white60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                            ),
                            Text(
                              '앱 설정',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 20,
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                ),
                // 계정
                InkWell(
                  onTap: () {
                    print("clickButton");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.white60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                            ),
                            Text(
                              '계정',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 20,
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                ),
                // 고객 센터
                InkWell(
                  onTap: () {
                    print("clickButton");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.white60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                            ),
                            Text(
                              '고객 센터',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 20,
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(35),
            child: Column(
              children: <Widget>[
                Text(
                  '로그아웃',
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                ),
                Text(
                  '버전 10.10.01(2021)',
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
