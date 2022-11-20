import 'package:flutter/material.dart';
import 'detail_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Login Flutter",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final alamat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text("Form Login 06TPLM001"),
      ),
      // untuk membuat form input tambahakan widget form()
      body: Form(
        // key adalah kunci unik untuk mengidentifikasi suatu form
        // di bawah key ini tambahkan widget sesuai selera kalian
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            //agar semua widget diposisi kiri
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 800,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Selamat Datang',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mohon Mengisi Form Login  Di Bawah Terlebih Dahulu',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextFormField(
                //memberikan identitas untuk setiap form
                controller: name,
                decoration: InputDecoration(
                  hintText: "Ketik nama lengkap anda",
                  labelText: "Nama Lengkap",
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              //memberikan jarak
              SizedBox(height: 15),
              TextFormField(
                controller: alamat,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    labelText: 'Alamat', hintText: 'Ketik alamat lengkap anda'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Alamat tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              //membuat button untuk mengirim dataw
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  //jika data lengkap maka kirim data ke halaman selanjutnya
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            //name.text adalah parameter yang dikirim
                            //alamat.text adalah paramter yang dikirim
                            builder: (_) => DetailPage(
                                  name: name.text,
                                  alamat: alamat.text,
                                )));
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
