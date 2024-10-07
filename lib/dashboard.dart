import 'package:flutter/material.dart';
import 'page1.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 85, 114),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Anda Berhasil Login!", 
            style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Mengubah warna teks menjadi putih
                  ),
                ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Tanda titik koma harus ada disini
              },
              child: Text("Kembali"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                            );
                        }, child: Text('Slicing Notion')
            ),
          ],
        ),
      ),
    );
  }
}
