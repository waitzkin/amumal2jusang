import 'package:flutter/material.dart';

class Setting2 extends StatefulWidget {
  @override
  _Setting2State createState() => _Setting2State();
}

class _Setting2State extends State<Setting2> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.03, height * 0.01, width * 0.05, height * 0.01),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    '내가 저장한 아무말',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
