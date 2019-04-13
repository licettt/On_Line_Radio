import 'package:flutter/material.dart';
import 'BackWheater.dart';
class Header extends StatelessWidget{
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final button = new InkWell(
        child: new Container(
          margin: new EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 10
          ),
          height: 50.0,
          width: 180.0,
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Color(0xFFf38b02),
                offset: new Offset(10.0, 10.0),
                blurRadius: 30.0
              )
            ],
            borderRadius: new BorderRadius.circular(30.0),
            color: Color(0xFFfeb800)

          ),

          child: new Center(
            child: new Text(
              "Go To Calendar",
              style: const TextStyle(
                fontSize: 2.0,
                color: Colors.white,
                fontWeight: FontWeight.w900


              ),
            ),
          ),
        ),
    );
    return new Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/radioonline_icono.png", height: 50.0),
          actions: <Widget>[
            InkWell(
              child: Icon(Icons.account_box),
              onTap: () {
                print("Contactenos");
              },
            ),
            InkWell(
              child:    Icon(Icons.search),
              onTap: () {
                print("Aqui realice su busqueda");
              },
            ),


            InkWell(
                onTap: () {
                  print("Este es mi menu");
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(Icons.dehaze),
                )),
          ],
        ),

        body: new Stack(
        children: <Widget>[
          new BackWheater(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(
              top: 0.0
            ),
            child: new Column(
              children: <Widget>[
                Image.asset("assets/banner.png", height: 300.0),
               // button

              ],
            ),
          )

        ],
      )
    );
  }

}