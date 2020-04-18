import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Detail Aplikasi"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(                            
                            image: DecorationImage(image: AssetImage('images/tes.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Column(                
                children: <Widget>[                  
                  Text('  Sebagian besar dari kita tidak terlalu memikirkan urine kita sebelum kita menyiramnya. Padahal detail dasar urine, seperti warna, bau, dan seberapa sering pergi ke toilet dapat memberi petunjuk tentang apa yang terjadi di dalam tubuh kita, tentang seberapa sehatkah kita. Kualitas Urine setiap orang dipengaruhi oleh beberapa faktor, salah satu faktor terbesar adalah banyaknya konsumsi air setiap gelas seharinya',
                  textAlign: TextAlign.justify, 
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                  SizedBox(
                    height: 10,
                  ), 
                  Text('  Aplikasi ini dibuat guna meningkatkan kesadaran masyarakat dalam mengetahui kondisi tubuh melalui kualitas urine. Sebagaimana, dengan langkah kecil yang kita lakukan untuk diri sendiri, sangatlah penting bagi kehidupan kedepannya. Ayo Cek dan liat kualitas urine anda',
                  textAlign: TextAlign.justify, 
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),                 
                ]
              ),
            )
          ]
        ),
      );
  } 
}