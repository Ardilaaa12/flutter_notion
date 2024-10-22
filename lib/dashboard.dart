import 'package:flutter/material.dart';
import 'Page2.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.username, required this.email, required this.sekolah});

  final String username;
  final String email;
  final String sekolah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          


          child: Stack(
            alignment: Alignment.center ,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.shortestSide,
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                  color: Color.fromRGBO(216, 239, 255, 1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage("images/fotoprofil.jpg"),
                        ),
                        Text("$username",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black)
                        ),

                        Text("Sekolah di $sekolah",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 0, 0, 0))
                        ),

                        Text("Email : $email",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 0, 0, 0))
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Mengatur tombol agar di tengah
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Page2()),
                                );
                              },
                              child: Text('See More'),
                            ),
                            
                            SizedBox(width: 10), // Memberikan jarak antara dua tombol

                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context); // Tombol kembali
                              },
                              child: Text("Kembali"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
