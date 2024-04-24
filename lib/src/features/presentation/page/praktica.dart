// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Praktica extends StatelessWidget {
  const Praktica({super.key});
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
                          Text("", style: AppTextStyle.f25cWhite),
                          Text("ПРАКТИКА", style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("ПРАКТИКА")),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211202191219-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("БилдирууКМИ_практ_-4-курс-дистант"),
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
              child: const Text("Программа Экспо"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211202191329-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("БилдирууКМИ_практ_-4-курс"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211202191433-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("БилдирууКМИ_практ_-3-курс"),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Кафедра КМИГД считается выпускающей кафедрой по направлениям КМИ и ГД. На высоком уровне налажена организация стажировок по направлениям КМИ и ГД бакалавриата. Около 150 студентов заключили договоры с 30 учреждениями и предприятиями на обучение, производственную и квалификационную практику. Кроме того, было подписано соглашение с холдингом «Каганат Инвест», и было отмечено, что одним рейсом на практику будет принято 100 студентов. Если есть студент, который хочет пройти практику в учреждении, которое не имеет с нами договора (банк, микрокредитная компания, мэрия и т.д.), то вы можете принести с предприятия отношения и пройти практику под направление кафедры. Были разработаны и переданы слушателям силлабусы и рабочие программы по всем вышеперечисленным видам практик. ОМС готовятся. Отчеты в практики готовятся своевременно, организована отправка и получение отчетов в практики. Участие студентов в конференции, ознакомление с правилами технической безопасности, получение дневников фиксируются в специальном журнале и регистрационных листах. Документация практики (приказы в папке номенклатуры 01-10, отношения, отчеты) хранятся в специальных папках. А стажировки выпускников проходят в аспирантуре."),
            ),
          ],
        ),
      ),
    );
  }
}
