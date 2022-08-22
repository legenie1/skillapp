import 'package:flutter/material.dart';
import 'package:restaurant/utils/emoticon_face.dart';
import 'package:restaurant/utils/exercise_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade700,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_baseball), label: 'Excercise'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ]),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Hi Sergeo
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Hi, Sergeo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "23 Aug, 2022",
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  // Seperator
                  SizedBox(height: 25),

                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  // Seperator
                  SizedBox(
                    height: 25,
                  ),

                  // How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel ?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  // Seperator
                  SizedBox(
                    height: 25,
                  ),

                  // My mood
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😟',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Badly',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🌝',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Fine',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),

                      // well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🙁',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Well',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),

                      // excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🌞',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // List of excercises
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 6,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Excercises",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // Listing items
                      Expanded(
                        child: ListView(
                          children: [
                            ExcerciseTile(
                              icon: Icons.favorite,
                              exerciseName: "Speaking Skills",
                              numberOfExcercise: 2,
                              color: Colors.orange,
                            ),
                            ExcerciseTile(
                              icon: Icons.person,
                              exerciseName: "Working Skills",
                              numberOfExcercise: 2,
                              color: Colors.green,
                            ),
                            ExcerciseTile(
                              icon: Icons.star,
                              exerciseName: "Studying Skills",
                              numberOfExcercise: 2,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
