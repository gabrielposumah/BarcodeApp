import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: QrScanner(),
    );
  }
}

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    String? text = 'Hasil Qr Scan';
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR CODE SCAN'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  text = await scanner.scan();
                  setState(() {});
                },
                child: const Text('Scans'))
          ],
        ),
      ),
    );
  }
}
