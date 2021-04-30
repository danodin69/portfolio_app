//My First Flutter App ^.^
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

/*This is a page controller that lets me use multiple widget as pages 
      *And scroll through them
      *Source: Flutter PageView Widget*/

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController(
    initialPage: 0,
  );
  @override

/*An App bar in a scaffold with transparency, with an extension of app body
 *Behind App bar set to true*/
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.green,
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

      /*Body with PageView using the controller i made earlier
      *The direction in which user can scroll is set to vertical, and reversed
      *It could be set to horizontal as well and the reverse set to true
      *It has a ScrollPhyscis method to give it a cool bounce effect
      *Source: Flutter PageView Widget*/
      body: PageView(
        controller: controller,
        children: [PageOne(), PageTwo(), PageThree(), PageFour()],
        scrollDirection: Axis.vertical,
        reverse: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

/*The pages are built on a stack I figured it will let me add background images
 *.. so i can add other widget on top, freely
 * Page 1 : extended from flutter layout tutorial, zuri
 */
class PageOne extends StatelessWidget {
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
              ),
            ],
          ),
        )
      ],
    );
  }
}

/*Page Two: Same as page one
 */
class PageTwo extends StatelessWidget {
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

/*Page Three: i researched on Gridview and was able to add images of my skills
 *Into a grid, all it took was a list and for the grid view builder to check how
 *..many items are in the list and make grids to contain them
 * */
class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> backgroundImages = [
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
                itemCount: backgroundImages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(backgroundImages[index]);
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

/*Page Four: Contained my contact infos and i decided to use cards to display
 *.. My number, email, and little website which contains a link to my resume
 *.. And social media. killing three birds with one Dart */
class PageFour extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              SizedBox(height: 90),
              //Card One
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
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21),
              //Card Two
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
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21),
              //Card 3
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
                        leading: Icon(Icons.web, size: 36, color: Colors.white),
                        title: Text('flowcv.me/danodin',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 900,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                  child: Text('Contact me :)',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontStyle: FontStyle.italic)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

/*
Author: DanOdin
Project: Portfolio App
For: Zuri Training
Genre: Information
Product Type: Course task
Date Written: 26-April-2021
Date Completed: 30-April-2021
Start Time - End Time: uNREGISTERED
Tested on: Google Chrome
------------------------------------
NOTE: For my first app in flutter i had a lot of fun and headaches. 
This is a non-complex yet creative portfolio app built using flutter widgets and
knowledge on layout with just the material import along with
its very helpful(Flutter)documentation and teacher Abbie at Zuri. 
- Grateful
*/

