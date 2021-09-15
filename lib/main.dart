// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: homePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  TextEditingController comment = TextEditingController();
  String com = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
        ),
        title: Image.asset(
          'assets/instagramLogo.png',
          height: 60,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        bottomOpacity: 2,
        elevation: 0,
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.send,
              color: Colors.black,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Stories',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 210,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Watch all',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, elevation: 0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.hardEdge,
                  children: <Widget>[
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.amber),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/profile1.jpeg',
                          ),
                          radius: 30,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.amber),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/profile0.jpeg',
                      ),
                      radius: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Text(
                  'John Willhelm',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Lana Perry',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Divider(
              color: Colors.grey.shade700,
            ),
            SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.amber),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile3.jpeg'),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Westley.Windler',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Text(
                          '...',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/profile4.jpeg',
                      height: 300,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.link_rounded),
                        SizedBox(
                          width: 9,
                        ),
                        Icon(Icons.mode_comment_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.send),
                        SizedBox(width: 220),
                        Icon(Icons.bookmark_border_outlined)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '1,234 Likes',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Mariadb_hm  Wow!!!',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'You  ' + com,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: comment,
                      decoration: InputDecoration(
                          hintText: 'Add a comment',
                          suffixIcon: IconButton(
                            onPressed: () {
                              com = comment.text;
                              setState(() {});
                            },
                            icon: Icon(Icons.post_add),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.amber),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/wall0.jpeg'),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Riley Pattison',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 190,
                            ),
                            Text(
                              '...',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/wall1.jpeg'),
                    Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '1,234 Likes',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Akshay_Kumar  Good Job!!!',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'You  ' + com,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: comment,
                      decoration: InputDecoration(
                          hintText: 'Add a comment',
                          suffixIcon: IconButton(
                            onPressed: () {
                              com = comment.text;
                              setState(() {});
                            },
                            icon: Icon(Icons.post_add),
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
