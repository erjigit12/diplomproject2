import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';

class Mobilnost extends StatelessWidget {
  const Mobilnost({super.key});
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
                          Text("МОБИЛЬНОСТЬ",
                              style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("Мобилдүүлүк")),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "КМИ жана гд адистиктеринин студенттеринин сырткы мобилдүүлүк боюнча таблицасы 2018-2023-жылдар үчүн."
                  " “Эки тараптуу келишимдер” боюнча жиберилген студенттер (2020-2021-окуу жылы, 2-семестр)"
                  "Ташкент экономикалык университети (Өзбекстан) – 4 студент."),
            ),
          ],
        ),
      ),
    );
  }
}
