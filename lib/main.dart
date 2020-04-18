import 'package:flutter/material.dart';
import 'package:projectmandiri/detail.dart';
import 'package:projectmandiri/UrineCalculator.dart';
import 'package:projectmandiri/about.dart';


void main(){
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
  ));
}

class Home extends StatefulWidget{
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.green[400],
      appBar: new AppBar(title: new Text("MedicalPortable"), backgroundColor: Colors.green[700],),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
            new UserAccountsDrawerHeader(
              accountName: new Text("Gusti Aditya"),
              accountEmail: new Text("aditya.trisna@undiksha.ac.id"),
              currentAccountPicture: 
              new GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(nama:"Gusti Aditya",)
                  ));
                }, 
                child: new CircleAvatar(
                  backgroundImage: AssetImage('images/foto.jpeg'),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage('images/13986.jpg'),
                fit: BoxFit.cover
                )
              ),
            ),
            new ListTile(
              title: new Text("Cek Urine"),
              trailing: new Icon(Icons.local_hospital),
              onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new UrineCalculatorScreen(nama:"Gusti Aditya",)
                ));
                },              
            ),
            new ListTile(
              title: new Text("Tentang"),
              trailing: new Icon(Icons.info),
              onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new About(nama:"Gusti Aditya",)
                ));
                }, 
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ]
        ),
      ),
      // body: Center(
      //   child: Container(
      //     padding: EdgeInsets.all(3),
      //     child: Image.asset('images/1.png')
      //   )        
      // )
      body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset("images/doctor.png", fit: BoxFit.contain,),
                  ),
                  
                  Text("MedicalPortable", style: TextStyle(color: Colors.grey[700], fontSize: 34, fontWeight: FontWeight.w700),),
                  
                  SizedBox(
                    height: 6,
                  ),
    
                  Text("Cek Kualitas Urine", style: TextStyle(color: Colors.grey[700], fontSize: 14, fontWeight: FontWeight.w400),),
    
            ],
          )
        )
      ),
    );
  }
}