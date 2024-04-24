// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UchebnyiZavedenyia extends StatelessWidget {
  const UchebnyiZavedenyia({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(120),
                ),
                color: Color(0xFFCC78EA),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 20,
                      left: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.adjust,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      bottom: 30,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ВЫСШИМИ УЧЕБНЫМИ",
                              style: AppTextStyle.f25cWhite),
                          Text("ЗАВЕДЕНИЯМИ",
                              style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                "СВЯЗЬ С ДРУГИМИ НАУЧНЫМИ УЧРЕЖДЕНИЯМИ, ВЫСШИМИ УЧЕБНЫМИ ЗАВЕДЕНИЯМИ",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422164242-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("БГУ. Двухстороннее соглашение"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422164348-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Андижанский государственный университет"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165221-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Юзунчу Йыл Университети"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165257-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Эржиес Университети"),
            ),
            /////////
            ///
            ///
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165339-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Чанаккале 18 март Университети"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165429-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Canciri Karatekin Universitesi"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165530-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Curimhuet university"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165609-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Истанбул Университети"),
            ),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20200422165645-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Агры Ибрахим Чечен Университети"),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/uluk11.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/uluk12.png"),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
