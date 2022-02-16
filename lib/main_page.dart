import 'package:flutter/material.dart';
import 'package:flutter_closesea_nft/more_page.dart';
import 'package:flutter_closesea_nft/profil_page.dart';
import 'package:flutter_closesea_nft/rangkings_page.dart';
import 'package:flutter_closesea_nft/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  int _selectedNavbar = 0;

  

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  final _pageOptions = [
    MainPage(),
    RangkingsPage(),
    SearchPage(),
    ProfilPage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          width: 150,
          child: Image(
            image: AssetImage("assets/CloseSea2.png"),
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.39,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                //padding: EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width * 0.3,
                //color: Colors.purple[600],
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/Box1.png"),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.9), BlendMode.modulate),
                    )),
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Art',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "RobotoMedium",
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15, bottom: 15, top: 15),
                width: MediaQuery.of(context).size.width * 0.3,
                //color: Colors.grey[50],
                decoration: BoxDecoration(
                    //color: Colors.purple[600],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/Box2.png"),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.9), BlendMode.modulate),
                    )),
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Music',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "RobotoMedium",
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15, bottom: 15, top: 15),
                width: MediaQuery.of(context).size.width * 0.3,
                //color: Colors.purple[600],
                decoration: BoxDecoration(
                    //color: Colors.purple[600],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/Box3.png"),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.9), BlendMode.modulate),
                    )),
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Domain Name',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "RobotoMedium",
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15, bottom: 15, top: 15),
                width: MediaQuery.of(context).size.width * 0.3,
                //color: Colors.purple[600],
                decoration: BoxDecoration(
                    //color: Colors.purple[600],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/Box1.png"),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.9), BlendMode.modulate),
                    )),
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Trading Card',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "RobotoMedium",
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15, bottom: 15, top: 15),
                width: MediaQuery.of(context).size.width * 0.3,
                //color: Colors.purple[600],
                decoration: BoxDecoration(
                    //color: Colors.purple[600],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/Box2.png"),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.9), BlendMode.modulate),
                    )),
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Virtual Worlds',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "RobotoMedium",
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            "Exclusive CloseSea drops",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "RowdiesRegular",
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.6,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/fluid1.jpg"),
                          fit: BoxFit.cover,
                        )),
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "AIIV Fluid of Explosion",
                  style: TextStyle(fontFamily: "RobotoMedium"),
                  textAlign: TextAlign.left,
                ),
              )
            ]),
            Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 15, right: 15),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/fluid2.jpg"),
                          fit: BoxFit.cover,
                        )),
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "AIIV Fluid of Explosion",
                  style: TextStyle(fontFamily: "RobotoMedium"),
                  textAlign: TextAlign.left,
                ),
              )
            ]),
            Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 15, right: 15),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/Fluid3.jpg"),
                          fit: BoxFit.cover,
                        )),
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "AIIV Fluid of Explosion",
                  style: TextStyle(fontFamily: "RobotoMedium"),
                  textAlign: TextAlign.left,
                ),
              )
            ]),
          ]),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "Trending Collections",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "RowdiesRegular",
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular this week",
                style:
                    TextStyle(fontFamily: "RobotoMedium", color: Colors.grey),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "See All",
                style:
                    TextStyle(fontFamily: "RobotoMedium", color: Colors.blue),
              ),
            ],
          )
        ]),
        Container(
          height: MediaQuery.of(context).size.width * 0.9,
          //margin: EdgeInsets.all(15),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("assets/ChangesAPe.gif"),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                    //margin: EdgeInsets.only(top: 200),
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BAYC Honorary",
                                style: TextStyle(
                                    fontFamily: "RowdiesRegular",
                                    color: Colors.grey.shade400),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("assets/ethereum.png"),
                                    width: 12,
                                  ),
                                  Text(
                                    " 1.25",
                                    style: TextStyle(
                                        fontFamily: "RobotoMedium",
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              )
                            ]),
                            Text(
                                "Honorary Border APE #31",
                                style: TextStyle(
                                    fontFamily: "RobotoMedium",
                                    color: Colors.black),
                              ),
                            SizedBox(

                            )
                      ],
                    ))
              ]),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("assets/HumanChanges.gif"),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                    //margin: EdgeInsets.only(top: 200),
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BAYC Honorary",
                                style: TextStyle(
                                    fontFamily: "RowdiesRegular",
                                    color: Colors.grey.shade400),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("assets/ethereum.png"),
                                    width: 12,
                                  ),
                                  Text(
                                    " 1.00",
                                    style: TextStyle(
                                        fontFamily: "RobotoMedium",
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              )
                            ]),
                            Text(
                                "Museum of Job Canbary 96",
                                style: TextStyle(
                                    fontFamily: "RobotoMedium",
                                    color: Colors.black),
                              ),
                            SizedBox(
                              
                            )
                      ],
                    ))
              ]),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("assets/DonkeyChange.gif"),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                    //margin: EdgeInsets.only(top: 200),
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BAYC Honorary",
                                style: TextStyle(
                                    fontFamily: "RowdiesRegular",
                                    color: Colors.grey.shade400),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("assets/ethereum.png"),
                                    width: 12,
                                  ),
                                  Text(
                                    " 1.05",
                                    style: TextStyle(
                                        fontFamily: "RobotoMedium",
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              )
                            ]),
                            Text(
                                "Chilling Donkey Burst XVII",
                                style: TextStyle(
                                    fontFamily: "RobotoMedium",
                                    color: Colors.black),
                              ),
                            SizedBox(
                              
                            )
                      ],
                    ))
              ])
            ],
          ),
        ),
        
      ]),
      
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            title: Text(
              'Home',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.poll_outlined,
              size: 30,
            ),
            title: Text('Rankings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              size: 30,
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
            title: Text('Profil'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_outlined,
              size: 30,
            ),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        //backgroundColor: Colors.blue,
        onTap: (index){
            setState(() {
              _changeSelectedNavBar;
              selectedPage = index;
            });
          },
        //onTap: _changeSelectedNavBar,
      ),
    );
  }
}
