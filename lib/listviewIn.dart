import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'imagesIn.dart';

class ListviewIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  "\nBienvenido",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(top: 50),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    ImagesIn("assets/img/img1.jpg", "Eric Cartman",
                        "South Park", 8, "comida"),
                    ImagesIn("assets/img/img2.jpg", "Kenny Mcormick",
                        "South Park", 8, "videojuegos"),
                    ImagesIn("assets/img/img3.jpg", "Kyle Broflovsky",
                        "South Park", 8, "estudiar"),
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 650, left: 80),
                    alignment: Alignment.bottomCenter,
                    child: Text("®Slayercorp",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black54,
                        )),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
