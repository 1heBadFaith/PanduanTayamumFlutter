import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.purple,
          canvasColor: Colors.purpleAccent,
          appBarTheme: AppBarTheme(color: Colors.purple, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Panduan Tayamum'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline)
              , onPressed: () {

                AlertDialog(
                  title: Text('Tentang Saya'),
                  content: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildAboutMe()
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: (){
                          Navigator.of(context);
                        },
                        child: const Text('Close'))
                  ],
                );
              }),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),

      body: PageView(
        children: <Widget>[
          panduanItem('1.Cari Tempat penuh debu'
              , ''
              , 'lalu jika sudah ketemu, antum kemudian tempelkan kedua tangan antum'),

          panduanItem('2.Membaca Doa Tayamum',
              'http://3.bp.blogspot.com/-r8dbz5B5SYo/VpANdg7p3xI/AAAAAAAACKE/6GQwcVfuJ0g/s1600/Doa%2BTayamum.bmp',
              '“Aku berniat tayamum untuk diperbolehkan melaksanakan salat, fardu karena Allah ta’ala.”'),

          panduanItem('3.Tepukan tangan ke Pipi'
              , 'http://2.bp.blogspot.com/-TjxR5ABgetQ/VpANv1EWvfI/AAAAAAAACKQ/i54njKFlcRY/s400/Gambar%2BTayamum.bmp'
              ,'Setelah menyentuh tangan, lalu tangannya ditepukan satu kali dan ditiup Setelah itu usapkan kedua telapak tangan pada wajah.'),

          panduanItem('4.Usap ke Tangan masing masing',
              'http://3.bp.blogspot.com/-Qbr-JMIJPV0/VpAOAjQajYI/AAAAAAAACKY/Cq8nzR3OAU8/s400/Gambar%2BTayamum%2B2.bmp'
              ,'Kemudian, letakkan lagi tangan ke tanah suci tadi, lalu tangannya ditepukan satu kali dan ditiup. Setelah itu, usapkan kedua telapak tangan kanan pada tangan kiri sampai siku dan telapak tangan kiri pada tangan kanan sampai siku secara bergantian.'),
        ],
      ),
    );

  }
}

Widget panduanItem(String judul, String gambar ,String detail) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,),

        SizedBox(
          height: 20.0,
        ),//SizedBox

        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(judul,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),

        ),//Padding



        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(detail,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,),
        )
      ],
    ),
  );
}

Widget _buildAboutMe() {
  return new RichText(
      text: new TextSpan(
          text: 'Hai Perkenalkan Nama Saya Muhammad Azhar najib dan saya tinggal di depok, saya lahir tanggal 18 Oktober 2005',
          style: const TextStyle(color: Colors.black),
          children: <TextSpan>[
            const TextSpan(text: 'dan juga azhar memiliki beberapa hobi yang agak aneh')
          ]
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}