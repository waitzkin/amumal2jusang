import 'package:flutter/material.dart';

class SetSubject extends StatefulWidget {
  @override
  _SetSubjectState createState() => _SetSubjectState();
}

final List<String> subjects = [
  '테마1',
  '테마2',
  '테마3',
  '테마4',
  '테마5',
  '테마6',
];

class _SetSubjectState extends State<SetSubject> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "\n관심있는 분야를\n선택해주세요",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "나중에 설정에서 변경할 수 있어요!\n",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: height,
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: height * 0.02,
                    mainAxisSpacing: width * 0.03,
                    childAspectRatio: 0.85,
                  ),
                  /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: height * 0.03,
                    mainAxisSpacing: width * 0.03,
                  ),*/
                  itemCount: 6,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, int index) {
                    return Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.all(30),
                      height: height * 0.5,
                      width: width * 0.5,
                      child: Text(
                        subjects[index],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage('images/example.jpg'),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
