import 'dart:ui'; //remember to remove

import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        /*flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1), bottomRight: Radius.circular(1)),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/appbar.jpg'), fit: BoxFit.fill),
            ),
          ),
        ),*/
        backgroundColor: Colors.transparent,

        elevation: 0.0,
        shadowColor: Colors.green,
        //brightness: Brightness.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.black87,
                    backgroundImage: AssetImage("assets/images/danodin.jpg"),
                    /*NetworkImage(
                        "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),*/
                  ),
                ],
              ),
              SizedBox(height: 21),
              Text(
                'Dan Odin',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              SizedBox(
                height: 21,
              )
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: PageView(
        controller: controller,
        children: [
          MyPage1Widget(),
          MyPage2Widget(),
          MyPage3Widget(),
          MyPage4Widget()
        ],
        scrollDirection: Axis.vertical,
        reverse: true,
        physics: BouncingScrollPhysics(),
        /*onPageChanged: (num){
		setState(() {
			_curr=num;
		});
    
		},*/
      ),
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/section_A.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 600,
                  width: 900,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Hello Earth, Welcome to my portfolio App \n\n:)',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 900,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  'swipe down',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic),
                ),
                /*decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/section1.jpeg'),
                        fit: BoxFit.cover),
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),*/
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/section_B.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 27,
                  width: 900,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 5, right: 5, top: 0),
                  child: Text(
                    'I develop games with godot and cross-platform mobile apps with flutter, harnessing my skills by creating fun and interactive apps that are not only addictive but educative.',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyPage3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/skill1.png",
      "assets/images/skill2.png",
      "assets/images/skill3.png",
      "assets/images/skill4.png",
      "assets/images/skill5.png",
      "assets/images/skill6.png",
      "assets/images/skill7.png",
      "assets/images/skill8.png",
      "assets/images/skill9.png"
    ];
    return Stack(children: <Widget>[
      Image.asset(
        "assets/images/section_C.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Container(
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 50.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(images[index]);
                })),
      ),
      Container(
        height: 800,
        width: 900,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(left: 5, right: 5, top: 0),
        child: Text(
          'The various technologies I work with',
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    ]);
  }
}

class MyPage4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/section_D.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  height: 27,
                  width: 900,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 5, right: 5, top: 120),
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  shadowColor: Colors.green,
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black87, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const ListTile(
                          leading:
                              Icon(Icons.phone, size: 36, color: Colors.white),
                          title: Text('+2348111774051',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          /*subtitle: Text('+2348111774051',
                              style: TextStyle(color: Colors.white)),*/
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Card(
                  shadowColor: Colors.green,
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black87, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.email_rounded,
                              size: 36, color: Colors.white),
                          title: Text('dpoxo@yandex.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          /*subtitle: Text(
                              '',
                              style: TextStyle(color: Colors.white)),*/
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  shadowColor: Colors.green,
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black87, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const ListTile(
                          leading:
                              Icon(Icons.web, size: 36, color: Colors.white),
                          title: Text('flowcv.me/danodin',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          /*subtitle: Text('',
                              style: TextStyle(color: Colors.white)),*/
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

/*class Pages extends StatelessWidget {
final text;
Pages({this.text});
@override
Widget build(BuildContext context) {
return Center(
	child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children:<Widget>[
		Text(
      text,
      textAlign: TextAlign.start,
      style: 
      TextStyle(
			fontSize: 15,
      fontWeight:FontWeight.bold, 
      color: Colors.grey),
      ),	
		]
	),
	);
}
}*/

const lightBlue = Color(0xff00bbff);
const mediumBlue = Color(0xff00a2fc);
const darkBlue = Color(0xff0075c9);

final lightGreen = Colors.green.shade300;
final mediumGreen = Colors.green.shade600;
final darkGreen = Colors.green.shade900;

final lightRed = Colors.red.shade300;
final mediumRed = Colors.red.shade600;
final darkRed = Colors.red.shade900;

class MyBox extends StatelessWidget {
  final Color color;
  final double height;
  final String text;
  MyBox(this.color, {this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
      ),
    );
  }
}
