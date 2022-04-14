import 'dart:ui';
import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posttest 2 Ikhwan"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 50, 19, 250),
      ),
      backgroundColor: Color.fromARGB(255, 40, 21, 254),
      body: ListView(
        children: [
          Text(
            "WAJO CELL SP 1 WAHAU",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Text(
            "Electronics store in East Kalimantan",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 280,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("assets/x70pro.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Text(
                "\n\n Toko Handphone dan Aksesoris Terlaris Di Muara Wahau",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DaftarContainer(
                      isActive: true, daftar: "Lihat Produk Lainnya"),
                  DaftarContainer(daftar: "Pesan Sekarang"),
                ],
              ),
              MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class DaftarContainer extends StatelessWidget {
  const DaftarContainer({Key? key, this.isActive = false, required this.daftar})
      : super(key: key);

  final bool isActive;
  final String daftar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 50,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color.fromARGB(255, 0, 0, 0) : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      child: Text(
        daftar,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFF023E4A),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Hubungi Admin",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
