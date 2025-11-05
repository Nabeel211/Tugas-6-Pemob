import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilDataPage({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  int get usia => DateTime.now().year - tahunLahir;

  @override
  Widget build(BuildContext context) {
    final primary = Colors.blue.shade600;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Hasil Input'),
        backgroundColor: primary,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 14),
            Text(
              nama,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: primary,
              ),
            ),
            const SizedBox(height: 18),
            Card(
              color: Colors.blue.shade50,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    _infoRow('NIM', nim, primary),
                    const Divider(height: 20),
                    _infoRow('Tahun Lahir', '$tahunLahir', primary),
                    const Divider(height: 20),
                    _infoRow('Usia', '$usia tahun', primary),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Data Anda berhasil ditampilkan.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value, Color primary) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
        Text(value, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}