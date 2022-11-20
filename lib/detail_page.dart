import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
//required artinya paramter wajib diisi saat dipanggil di halaman lain
  DetailPage({required this.name, required this.alamat});

  String name;
  String alamat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Halaman Dalam"),
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 231, 92, 138),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selamat Kepada $name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kamu Telah Berhasi Login Pada Form ini',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tempat Tingal Kamu Berada Di $alamat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'images/terimakasih.png',
                width: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
