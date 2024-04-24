// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NauchnoIsledovatelskoeDeatelnost extends StatelessWidget {
  const NauchnoIsledovatelskoeDeatelnost({super.key});
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
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ",
                              style: AppTextStyle.f25cWhite),
                          Text("ДЕЯТЕЛЬНОСТЬ !",
                              style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("Научные работы студентов:")),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211202190524-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text(
                  "'Колдонмо математика жана информатиканын актуалдуу проблемалары' аталыштагы 3 секциялык ишинин ОТЧЕТУ"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203074738-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text("Окутуучу жана студент КМИГД"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () async {
                const url =
                    'https://base.oshsu.kg/resurs/document/PDF-20211203075037-uluk.pdf';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: const Text(
                  "'Математиканан, информатиканын учурдагы маселелери, алардын колдонулуштары'"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Студенты и аспиранты специальностей КМИ и ГД активно участвуют в научных конференциях. Аспиранты публикуют научные статьи. Ежегодно студенты и магистранты кафедры активно участвуют в научных конференциях, организуемых ОшМУ, и занимают призовые места. 30 ноября 2022 года состоится 9-я международная студенческая научная конференция «Студент и научно-технический прогресс». Бритиков Артемий, студент 2 курса специальности КМИ, занял 1 место, Эргешова Каникей, студентка 3 курса специальности ГД, заняла 2 место, Арген, студентка 3 курса специальности КМИ, заняла 3 место."),
            ),
          ],
        ),
      ),
    );
  }
}
