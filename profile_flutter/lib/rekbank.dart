import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Rekening(),
  ));
}

class Rekening extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => new _HomeState();
}


class _HomeState extends State<Rekening> {

  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerBank= new TextEditingController();
  TextEditingController controllerRek= new TextEditingController();


  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Akun : ${controllerNama.text}"),
            new Text("Nama Bank : ${controllerBank.text}"),
            new Text("Nomor Rekening : ${controllerRek.text}"),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: ()=>Navigator.pop(context),
            )
          ]
        ),
      )
    );
    showDialog(context: context,child:alertDialog);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Rekening Bank"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                hintText: "Akun Anda",
                labelText: "Nama Akun",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerBank,
              decoration: new InputDecoration(
                hintText: "Nama Bank",
                labelText: "Masukkan Nama Bank",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
             new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerRek,
              decoration: new InputDecoration(
                hintText: "No. Rekening",
                labelText: "No. Rekening",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              )
            ),
            new RaisedButton(
              child: new Text("Kirim"),
              color: Colors.red,
              onPressed: (){kirimdata();},
            )
          ]
        ) 
      )
    );
  }
}
