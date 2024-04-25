// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:diplomproject2/src/features/presentation/widgets/card_contact_container.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
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
                          Text("", style: AppTextStyle.f25cWhite),
                          Text("КОНТАКТ", style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("КОНТАКТ")),
            const SizedBox(height: 15),
            CardContactContainer(
              onTap: () async {
                const url =
                    'https://www.instagram.com/pmi_gd/?igshid=MTg0ZDhmNDA%3D';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              title: "Instagram",
              subTitle: "oshsu_pmi_gd",
              svg: "assets/svg/instagram.svg",
              backColor: Colors.red,
            ),
            const SizedBox(height: 15),
            CardContactContainer(
              onTap: () async {
                const url =
                    'https://www.facebook.com/prikladnaymatematikainformatikagraficalykdizain?mibextid=ZbWKwL';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              title: "Facebook",
              subTitle: "Азимов Бектур",
              svg: "assets/svg/facebook.svg",
              backColor: Colors.blue,
            ),
            const SizedBox(height: 15),
            CardContactContainer(
              onTap: () async {
                const url =
                    'https://api.whatsapp.com/send/?phone=%2B996772499996&text&type=phone_number&app_absent=0';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              title: "Whatsapp",
              subTitle: "Азимов Бектур",
              svg: "assets/svg/whatsapp.svg",
              backColor: Colors.green,
            ),
            const SizedBox(height: 15),
            CardContactContainer(
              onTap: () async {
                const url =
                    'https://api.whatsapp.com/send/?phone=%2B996772499996&text&type=phone_number&app_absent=0';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              title: "Анонимдуу кат куржун",
              subTitle: "Студенттер учун",
              svg: "assets/svg/student.svg",
              backColor: const Color(0xFFF7CD12),
              iconColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
