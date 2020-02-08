import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imgPath), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(16),
            elevation: 8,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                                image: AssetImage("assets/dress.jpg"),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "SATILIK",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Kadın Elbisesi",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 170,
                            child: Text(
                              "Siyah kadın elbisesi,1.55 kızlar için uygun değildir.Özel davetler için özel üretilmiştir.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$7300",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Container(
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                            backgroundColor: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: 50,
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8),
            ),

             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Center(
              child: Text(
              "İNCELE",
              style: TextStyle(
                
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ),
            Icon(Icons.arrow_forward_ios,color: Colors.white,),
               ],
             ),
          ),
        ),
      ],
    ));
  }
}
