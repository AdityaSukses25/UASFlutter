import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Bisnis(),
  ));
}

class Bisnis extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => new _HomeState();
}


class _HomeState extends State<Bisnis> {

  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerJob= new TextEditingController();
  TextEditingController controllerBisnis= new TextEditingController();


  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Bisnis : ${controllerNama.text}"),
            new Text("Job Title : ${controllerJob.text}"),
            new Text("Kategori Bisnis : ${controllerBisnis.text}"),
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
        title: new Text("Info Bisnis"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                hintText: "Bisnis Anda",
                labelText: "Nama Bisnis",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerJob,
              decoration: new InputDecoration(
                hintText: "Masukkan Job",
                labelText: "Job Title",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
             new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerBisnis,
              decoration: new InputDecoration(
                hintText: "Kategori Bisnis",
                labelText: "Kategori Bisnis",
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
