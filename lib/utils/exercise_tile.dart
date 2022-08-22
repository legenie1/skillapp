import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExcercise;
  final color;

  const ExcerciseTile(
      {Key? key,
      required this.icon,
      required this.exerciseName,
      required this.numberOfExcercise,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(color: Colors.black26, blurRadius: 1, spreadRadius: 0)
            ]),
        // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Container(
          padding: EdgeInsets.all(5.0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 90,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(12.0),
                      // boxShadow: BoxShadow(color:),
                    ),
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        exerciseName,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        numberOfExcercise.toString() + ' Excercises',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black45),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }
}
