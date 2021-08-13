import 'package:flutter/material.dart';
import 'datapribadi.dart';
import 'infobisnis.dart';
import 'rekbank.dart';

void main() {
  runApp(new MaterialApp(
    home: new Profile(),
  ));
}


class Profile extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile"),
        backgroundColor: Colors.red,),
        body: Builder(builder: (context)=> Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(height: 200,
              color: Colors.red,), 
              Container(
              child: Column(
                children: <Widget>[
                  MaterialButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>DataPribadi()));
               },
               color: Colors.redAccent,
               child: Text("Data Pribadi", style: TextStyle(color: Colors.white),),
                  ),
              ],  
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  MaterialButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Bisnis()));
               },
               color: Colors.redAccent,
               child: Text("Informasi Bisnis", style: TextStyle(color: Colors.white),),
                  )
        ],
      ),
      
      
    ),
    Container(
              child: Column(
                children: <Widget>[
                  MaterialButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Rekening()));
               },
               color: Colors.redAccent,
               child: Text("Informasi Bank", style: TextStyle(color: Colors.white),),
    )]))])))));}
  
}