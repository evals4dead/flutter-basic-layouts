import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Stars(),
    );
  }
}

class Stars extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StarsState();
}

class StarsState extends State<Stars> {
  @override
  Widget build(BuildContext context) {
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.green[500],
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
          textDirection: TextDirection.ltr,
        ),
      ],
      textDirection: TextDirection.ltr,
    );

    final descTextStyle = TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18,
        height: 2);

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    'PREP:',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    '25 min',
                    textDirection: TextDirection.ltr,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.timer,
                    color: Colors.green[500],
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    'COOK:',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    '1 hr',
                    textDirection: TextDirection.ltr,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.restaurant,
                    color: Colors.green[500],
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    'FEEDS:',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    '4-6',
                    textDirection: TextDirection.ltr,
                  )
                ],
              )
            ],
            textDirection: TextDirection.ltr,
          ),
        ));

    return new Container(
      padding: EdgeInsets.all(20),
      child: iconList,
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     stars,
      //     Text(
      //       '170 Reviews',
      //       textDirection: TextDirection.ltr,
      //       style: TextStyle(
      //           color: Colors.black,
      //           fontWeight: FontWeight.w800,
      //           fontFamily: 'Roboto',
      //           letterSpacing: 0.5,
      //           fontSize: 20),
      //     )
      //   ],
      //   textDirection: TextDirection.ltr,
      // ),
    );
  }
}
