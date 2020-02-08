import 'package:flutter/material.dart';
import 'package:flutter_moda_app/ui/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.purple, size: 24),
              ),
              Tab(
                icon: Icon(Icons.search, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.message, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.fingerprint, color: Colors.grey, size: 22),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "İşte Benim Modam",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_enhance),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            //color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(18),
              elevation: 10,
              //color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Sena",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "5 Saat Önce ",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.more_horiz, color: Colors.grey, size: 22),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Bunları benim kişisel Web sitemde bulabilirsiniz "
                      "Bu kıyafetlerin hepsi benim tasarımımdır ve satışa açıktır.",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "assets/modelgrid1.jpeg"),
                            ));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/modelgrid1.jpeg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid2.jpeg"),
                                  ));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    height: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/modelgrid2.jpeg",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: "assets/modelgrid3.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/modelgrid3.jpeg",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text("#kenditasaramım",
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontSize: 10,
                                    color: Colors.purple)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text("#satılıkkıyafet",
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontSize: 10,
                                    color: Colors.purple)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.near_me,
                          color: Colors.purple.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.7k",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.chat_bubble,
                          color: Colors.purple.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "946",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 240,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.purple,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5.6k",
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(18),
              elevation: 10,
              //color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model3.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "feyza",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "6 Saat Önce ",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.more_horiz, color: Colors.grey, size: 22),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Satışta olan ürünlerimi İnceleyiniz "
                      "Bu kıyafetlerin hepsi benim tasarımımdır ve satışa açıktır.",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "assets/modelgrid1.jpeg"),
                            ));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/modelgrid1.jpeg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid2.jpeg"),
                                  ));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    height: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/modelgrid2.jpeg",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: "assets/modelgrid3.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/modelgrid3.jpeg",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text("#kenditasaramım",
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontSize: 10,
                                    color: Colors.purple)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text("#satılıkkıyafet",
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontSize: 10,
                                    color: Colors.purple)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.near_me,
                          color: Colors.purple.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.5k",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.chat_bubble,
                          color: Colors.purple.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "496",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 240,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.purple,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "3.6k",
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(18),
              elevation: 10,
              //color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model2.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Tuğçe",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "6 Saat Önce ",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.more_horiz, color: Colors.grey, size: 22),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Sonbahın Yeni Modaı Bunlar Olacak :) "
                      ,
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "assets/modelgrid1.jpeg"),
                            ));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/modelgrid1.jpeg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid2.jpeg"),
                                  ));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    height: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/modelgrid2.jpeg",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: "assets/modelgrid3.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/modelgrid3.jpeg",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text("#kenditasaramım",
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontSize: 10,
                                    color: Colors.purple)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text("#satılıkkıyafet",
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontSize: 10,
                                    color: Colors.purple)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.near_me,
                          color: Colors.purple.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.5k",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.chat_bubble,
                          color: Colors.purple.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "496",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 240,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.purple,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "3.6k",
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
              child: Center(
            child: Text("from ONUR AKDOĞAN",
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 12)),
          )),
        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.purple,
            ),
            child: Center(
              child: Text(
                "Takip",
                style: TextStyle(fontFamily: "Montserrat", color: Colors.white),
              ),
            )),
      ],
    );
  }
}
