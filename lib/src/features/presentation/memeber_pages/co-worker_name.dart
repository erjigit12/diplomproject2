// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CoWorkersName extends StatelessWidget {
  const CoWorkersName({
    super.key,
    required this.qrImage,
    required this.nameCoWorker,
  });

  final String qrImage;
  final String nameCoWorker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F5),
      appBar: AppBar(
        foregroundColor: Colors.green,
        backgroundColor: const Color(0xFFF7F5F5),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Text(
              "Мой QR",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "QR – бул Quick Response деп чечмеленет,«бат кируу» дегенди билдирет",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "MYQR",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Image(
                        image: AssetImage(qrImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      nameCoWorker,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.info,
                      size: 20,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "QR кодду сканерлоо менен резюмени алыныз",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
