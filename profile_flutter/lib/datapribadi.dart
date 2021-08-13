import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new DataPribadi(),
  ));
}

class DataPribadi extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => new _HomeState();
}


class _HomeState extends State<DataPribadi> {

  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerEmail= new TextEditingController();
  TextEditingController controllerNomor= new TextEditingController();


  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Email Anda : ${controllerEmail.text}"),
            new Text("Nomor Telepon : ${controllerNomor.text}"),
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
        title: new Text("Data Pribadi"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                hintText: "Nama Anda",
                labelText: "Nama Lengkap",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerEmail,
              decoration: new InputDecoration(
                hintText: "Email Anda",
                labelText: "Masukkan Email",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
             new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerNomor,
              decoration: new InputDecoration(
                hintText: "No. Telp",
                labelText: "No. Telepon",
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
