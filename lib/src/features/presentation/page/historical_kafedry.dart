import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';

class HistoricalKafedry extends StatelessWidget {
  const HistoricalKafedry({super.key});
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
                          Text("ИСТОРИЯ ", style: AppTextStyle.f25cWhite),
                          Text("КАФЕДРЫ!", style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("ИСТОРИЯ КАФЕДРЫ")),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "     Кафедра прикладной математики, информатики и графического дизайна создана 26 августа 2020 года приказом ректора ОшГУ, профессора К.Г.Кожобекова №65. В настоящее время работает 21 преподавательский состав: 3 доктора наук, 4 кандидата наук, 4 старших преподавателя, 10 преподавателей, 1 методист, 1 лаборант."
                  "На кафедру назначен ф.¬м. я. к., ведет доцент Азимов Бектур Абдырахманович. Чтобы осваивать новые технологии, новые программы и идти в ногу со временем, преподаватели устраивают по субботам семинары и обмениваются знаниями и опытом."
                  "М.В. МГУ имени М.В.Ломоносова и КМИ реализуют программу двойных дипломов в области магистратуры. Специальность «Аналитика больших данных» открыта для молодых людей, желающих обучаться в сфере ИТ."
                  "В апреле 2022 года кафедра организовала и успешно завершила конкурс на открытие межстуденческих программ в южном регионе под названием «Stud Expo 2022»."
                  "В ноябре 2022 года команда, созданная под руководством преподавателей кафедры Камалова Султана, Равшана уулу Сымык заняла 1 место на мероприятии под названием «Мейкатон 2022», организованном в рамках проекта «Инклюзивное общество для детей с ограниченными возможностями» . Наряду с работой сотрудники отдела взяли за правило посещать живописные места Сары-Челек и Арсланбап и отдыхать на природе. В настоящее время на подготовленных кафедрой специальностях обучается в общей сложности __ студентов."),
            ),
          ],
        ),
      ),
    );
  }
}
