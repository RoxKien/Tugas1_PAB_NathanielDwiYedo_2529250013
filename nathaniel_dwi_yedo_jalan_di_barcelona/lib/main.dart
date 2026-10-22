import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orange),
      ),
      home: const GambarJalanBarcelona(),
    );
  }
}

class GambarJalanBarcelona extends StatelessWidget {
  const GambarJalanBarcelona({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Galeri Foto"),
          backgroundColor: Colors.limeAccent,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('gambarJalan.jpg',
                height: 200,
                fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
              
                const Text(
                'Jalan di Barcelona',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Divider(indent: 16, endIndent: 16),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.place, color: Colors.red, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Lokasi: Barcelona, Spanyol',
                            style: TextStyle(fontSize: 13, color: Colors.black87),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Icon(Icons.calendar_month, color: Colors.blue, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Publikasi: 13 Agustus 2013',
                            style: TextStyle(fontSize: 13, color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Divider(indent: 16, endIndent: 16),
              ],
            ),
          ),
        ),
        
      )
    }
  @override
  State<GambarJalanBarcelona> createState() => _MyHomePageState();
}
