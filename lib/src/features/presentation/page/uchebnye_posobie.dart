// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UchebnyePosobye extends StatelessWidget {
  const UchebnyePosobye({super.key});
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
                    'https://base.oshsu.kg/resurs/document/PDF-20211203123052-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 1"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203122925-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 2"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203123016-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 3"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203122742-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 4"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203122538-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 5"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203123630-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 6"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203123652-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 7"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203123652-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Документ 8"),
            ),
          ],
        ),
      ),
    );
  }
}
