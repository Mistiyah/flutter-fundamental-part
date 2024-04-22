import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final String? harga;

  const ProdukDetail({Key? key, this.kodeProduk, this.namaProduk, this.harga}) : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
  }

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Kode Produk : " + widget.kodeProduk.toString()),
            Text("Nama Produk : ${widget.namaProduk}"),
            Text("Harga : ${widget.harga}")
          ],
        ),
      ),
    );
  }
}
