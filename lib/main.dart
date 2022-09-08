import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color myColors = Color.fromARGB(255, 236, 239, 241);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            color: myColors,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Text(
                  "Film",
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 100,
                  child: Image(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/12/13/29/film-147137_1280.png")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.photo_camera),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.check_box),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.info),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "POPCORN",
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                    Container(
                      child: Column(children: [
                        Icon(Icons.movie_creation),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.face),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 100,
                        ),
                      ]),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 150,
                      height: 120,
                      child: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/08/20/21/13/popcorn-898154_1280.png")),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.no_flash),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.visibility),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.language),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 100,
                  width: 100,
                  child: Image(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/07/12/17/47/test-pattern-152459_1280.png")),
                ),
                Text(
                  "NO SIGNAL",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Mail",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 100,
                      width: 90,
                      child: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/01/26/17/15/gmail-1162901_1280.png")),
                    ),
                    Container(
                      width: 100,
                      child: Column(children: [
                        Icon(Icons.mail),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.description),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.notification_add),
                        SizedBox(
                          width: 100,
                        ),
                      ]),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 135, 185, 226),
                        ),
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              myColors = Colors.blue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 239, 232, 162),
                        ),
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              myColors = Colors.yellow;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 162, 232, 165),
                        ),
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              myColors = Colors.green;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 202, 115, 109),
                        ),
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              myColors = Colors.red;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
