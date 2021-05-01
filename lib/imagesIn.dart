import 'package:flutter/material.dart';

class ImagesIn extends StatelessWidget {
  String path = "assets/img/images.jpg";
  String name = "info";
  String serie = "name";
  String intereses = "interes";
  int age = 1;

  ImagesIn(this.path, this.name, this.serie, this.age, this.intereses);
  @override
  Widget build(BuildContext context) {
    final image = Stack(children: [
      Column(children: [
        Container(
          height: 360,
          width: 350,
          margin: EdgeInsets.only(left: 30, top: 40),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(path),
              ),
              borderRadius: BorderRadius.all(Radius.circular(9.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.redAccent[700],
                    blurRadius: 15,
                    offset: Offset(0, 7))
              ]),
        ),
        Row(
          children: [
            Container(
                height: 140,
                width: 270,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.redAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.only(left: 10, top: 0),
                padding: EdgeInsets.all(16),
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Text(
                      ("◘" +
                          name +
                          " " +
                          "age:" +
                          age.toString() +
                          "\n☻Serie:" +
                          serie +
                          "\n" +
                          "♥" +
                          intereses),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ))
          ],
        )
      ])
    ]);
    return image;
  }
}
