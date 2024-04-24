// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ObrazovatelnyeProgrammy extends StatelessWidget {
  const ObrazovatelnyeProgrammy({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(120),
                ),
                color: Color(0xFF5C1ED7),
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
                          Text("ОБРАЗОВАТЕЛЬНЫЕ",
                              style: AppTextStyle.f25cWhite),
                          Text("ПРОГРАММЫ", style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("ОБРАЗОВАТЕЛЬНЫЕ ПРОГРАММЫ")),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211202191219-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Стратегиялык иш план 5 жылдык"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20230412064712-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Кафедранын иш-планы"),
            ),
          ],
        ),
      ),
    );
  }
}
