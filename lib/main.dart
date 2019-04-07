import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mystore(),
    );
  }
}

class Mystore extends StatefulWidget {
  @override
  _MystoreState createState() => _MystoreState();
}

class _MystoreState extends State<Mystore> with SingleTickerProviderStateMixin {
  TabController controller;
  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

 @override
  void initState() {
    super.initState();
    controller=new TabController(length: 4,vsync: this,);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
 
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(getColorHexFromStr('#183c59')),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  color: Color(getColorHexFromStr('#3d3f44')),
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250.0),
                        color: Color(getColorHexFromStr('#4c1b1b'))
                            .withOpacity(0.1)),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  right: 150.0,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250.0),
                        color: Color(getColorHexFromStr('#441344'))
                            .withOpacity(0.2)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                color: Colors.red,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              image: DecorationImage(
                                  image: AssetImage('assets/g.jpg'))),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 120),
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {},
                            color: Color(getColorHexFromStr('#ffffff')),
                            iconSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Welcome , Friend",
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(getColorHexFromStr('#ffffff'))),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Whic world do you like to enter? ",
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(getColorHexFromStr('#ed9d09'))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(getColorHexFromStr('000000')),
                                size: 25,
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                              hintText: 'Choose the world',
                              hintStyle: TextStyle(fontFamily: 'Quicksand')),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0)
                  ],
                )
              ],
            ),
            SizedBox(height: 10.0),
            Stack(
              children: <Widget>[
                SizedBox(height: 10.0),
                Material(
                    elevation: 8.0,
                    child: Container(
                        height: 65.0,
                        color: Color(getColorHexFromStr('#ed9d09')))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/a.png'))),
                          ),
                          Text(
                            'AC',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/w.png'))),
                          ),
                          Text(
                            'The witcher',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/c.png'))),
                          ),
                          Text(
                            'God of war',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/v.png'))),
                          ),
                          Text(
                            'GTA V',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            itemCard("DMC", 'assets/dm.jpg', true),
            itemCard("AC Odyssey", 'assets/od.jpg', false),
            itemCard("Prince of Persia", 'assets/pp.jpg', false),
            itemCard("Dark Souls III", 'assets/ds.jpg', true),
            itemCard("God of War", 'assets/gd.jpg', false),
          ],
        ),
        bottomNavigationBar: Material(
            color: Colors.white,
            child: TabBar(
                controller: controller,
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Image(image: AssetImage('assets/bb.png'),),
                   Image(image: AssetImage('assets/dd.png'),),
                  Image(image: AssetImage('assets/ww.png'),),
                  Image(image: AssetImage('assets/ii.png'),),
                ])));
  }

  Widget itemCard(String title, String imageP, bool isFav) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0,right: 5.0, top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Color(
          getColorHexFromStr('ffffffff'),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 130.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageP), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.0),
                    Material(
                      elevation: isFav ? 0.0 : 2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: isFav
                                ? Colors.white
                                : Colors.white),
                        child: Center(
                          child: isFav
                              ? Icon(Icons.favorite_border)
                              : Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.0),
                Container(
                  width: 175.0,
                  child: Text(
                    'This game will take you in a unique trip, fntastic world,strange creators and great characters that will you meet',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 5.0),
                Row(children: <Widget>[
                  SizedBox(width: 20.0),
                  Container(
                    height: 40.0,
                    width: 50.0,
                    color: Color(getColorHexFromStr('#420101')),
                    child: Center(
                      child: Text(
                        '\$50',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 110.0,
                    color: Color(getColorHexFromStr('#FEDD59')),
                    child: Center(
                      child: Text(
                        ' Enter the world',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
