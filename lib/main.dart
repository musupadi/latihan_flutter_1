import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          backgroundColor: Color.fromRGBO(244, 243, 243, 1),
          appBar: AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Temukan Apa yang kamu cari',
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Inspirasi',
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 243, 243, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefix: Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: "Mencari Apa yang kau inginkan",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Promo Today',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            promoCard('assets/img/wallpaper1.jpg'),
                            promoCard('assets/img/wallpaper2.jpg'),
                            promoCard('assets/img/wallpaper3.jpg'),
                            promoCard('assets/img/wallpaper4.jpg'),
                            promoCard('assets/img/wallpaper5.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/wallpaper4.jpg')
                          )
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                                0.1,
                                0.8
                              ], colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(0)
                              ]
                              )
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('Game Terbaik',style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ),
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

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.8
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(0)
              ])),
        ),
      ),
    );
  }
}
