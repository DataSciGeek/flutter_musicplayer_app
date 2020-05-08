import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sliderAmount = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            body: TabBarView(children: [
              new Container(
                color: Colors.yellow,
              ),
              new Container(
                color: Colors.orange,
              ),
              new Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back,
                                size: 24,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Playlist',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'PlayfairDisplay',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 180,
                      width: 180,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/artist.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        Text(
                          'Now Playing',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Inis Mona - Eluvelite',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Eluvelite',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'PlayfairDisplay',
                            color: Color.fromRGBO(51, 51, 51, 1.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    Column(
                      children: <Widget>[
                        Image.asset('assets/images/playbar.png'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '03:36',
                              style: TextStyle(
                                fontFamily: 'PlayfairDisplay',
                                color: Color.fromRGBO(181, 181, 181, 1.0),
                              ),
                            ),
                            Text(
                              '01:22',
                              style: TextStyle(
                                fontFamily: 'PlayfairDisplay',
                                color: Color.fromRGBO(181, 181, 181, 1.0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.repeat,
                              color: Color.fromRGBO(181, 181, 181, 1.0),
                            ),
                            Icon(
                              Icons.repeat,
                              color: Color.fromRGBO(181, 181, 181, 1.0),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                            width: 350,
                            //color: Colors.lightGreen,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  child: Slider(
                                    value: sliderAmount,
                                    min: 0,
                                    max: 100,
                                    activeColor:
                                        Color.fromRGBO(255, 89, 117, 1.0),
                                    inactiveColor:
                                        Color.fromRGBO(181, 181, 181, 1.0),
                                    onChanged: (double delta) {
                                      setState(() {
                                        sliderAmount = delta;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  //color: Colors.lightBlue,
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(Icons.skip_previous, size: 30),
                                          Icon(Icons.skip_next, size: 30),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 89, 117, 1.0),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.green,
              ),
            ]),
            bottomNavigationBar: Container(
              color: Color.fromRGBO(255, 64, 96, 1),
              height: 70,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Column(
                      children: <Widget>[
                        new Icon(Icons.home),
                        SizedBox(height: 0.9),
                        Text(
                          'Browse',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    icon: Column(
                      children: <Widget>[
                        new Icon(Icons.audiotrack),
                        SizedBox(height: 0.9),
                        Text(
                          'All tracks',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    icon: Column(
                      children: <Widget>[
                        new Icon(Icons.featured_play_list),
                        SizedBox(height: 0.9),
                        Text(
                          'Playlists',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.search),
                        SizedBox(height: 0.9),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.3),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
