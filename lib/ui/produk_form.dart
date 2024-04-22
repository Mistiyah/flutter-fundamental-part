import 'package:flutter/material.dart';
import 'package:belajarflutter/ui/produk.detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _TextboxKodeProduk(controller: _kodeProdukTextboxController),
            _TextboxNamaProduk(controller: _namaProdukTextboxController),
            _TextboxHargaProduk(controller: _hargaProdukTextboxController),
            _TombolSimpan(
              kodeProdukController: _kodeProdukTextboxController,
              namaProdukController: _namaProdukTextboxController,
              hargaProdukController: _hargaProdukTextboxController,
            ),
          ],
        ),
      ),
    );
  }
}

class _TextboxKodeProduk extends StatelessWidget {
  final TextEditingController controller;

  const _TextboxKodeProduk({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: controller,
    );
  }
}

class _TextboxNamaProduk extends StatelessWidget {
  final TextEditingController controller;

  const _TextboxNamaProduk({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: controller,
    );
  }
}

class _TextboxHargaProduk extends StatelessWidget {
  final TextEditingController controller;

  const _TextboxHargaProduk({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: controller,
    );
  }
}

class _TombolSimpan extends StatelessWidget {
  final TextEditingController kodeProdukController;
  final TextEditingController namaProdukController;
  final TextEditingController hargaProdukController;

  const _TombolSimpan({
    Key? key,
    required this.kodeProdukController,
    required this.namaProdukController,
    required this.hargaProdukController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = kodeProdukController.text;
        String namaProduk = namaProdukController.text;
        int harga = int.parse(hargaProdukController.text);
          
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProdukDetail(
          kodeProduk: kodeProduk,
          namaProduk: namaProduk,
          harga: harga.toString(),
        )));
      },
      child: const Text('Simpan'),
    );
  }
}
