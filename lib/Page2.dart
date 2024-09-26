import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengganti Container dengan Scaffold
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage("images/fotoprofil.jpg"),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(216, 239, 255, 1),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: 30,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox( height: 10 ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(216, 239, 255, 1),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "History",
                          style: TextStyle(
                            fontSize: 30,
                            color: const Color.fromARGB(255, 0, 0, 0)
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 0, 0)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(216, 239, 255, 1),
                child: Container(
                  alignment: Alignment.centerLeft, // Pastikan isi ter-align ke kiri
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Arahkan semua ke kiri
                    children: <Widget>[
                      Text(
                        "Skill",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        alignment: AlignmentDirectional.centerStart, // Align text ke kiri
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "HTML",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      SizedBox(height: 2), // Jarak antar tulisan 
                      Container(
                        alignment: AlignmentDirectional.centerStart, // Align text ke kiri
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "CSS",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      SizedBox(height: 2), // Jarak antar tulisan 
                      Container(
                        alignment: AlignmentDirectional.centerStart, // Align text ke kiri
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "JavaScript",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
