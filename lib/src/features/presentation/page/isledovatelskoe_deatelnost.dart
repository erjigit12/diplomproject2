import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';

class IsledovatelskoeDeatelnost extends StatelessWidget {
  const IsledovatelskoeDeatelnost({super.key});
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
                          Text("ИССЛЕДОВАТЕЛЬСКАЯ ",
                              style: AppTextStyle.f25cWhite),
                          Text("ДЕЯТЕЛЬНОСТЬ!",
                              style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("ИССЛЕДОВАТЕЛЬСКАЯ ДЕЯТЕЛЬНОСТЬ")),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Научная тема кафедры «Актуальные проблемы прикладной математики и информатики». Промежуточные виды результатов - публикация статей и диссертационных исследований по актуальным проблемам прикладной математики и информатики; научно-методические семинары, круглые столы, дискуссии, апробация учебных программ, учебников, учебных пособий; Участие в конференциях по актуальным проблемам математики и информатики, подготовка научных докладов, диссертационных исследований."
                  "Сотрудники кафедры активно пишут научные статьи и публикуют их в журналах на базе РИНЦ, SCOPUS, WEB OF SCIENCES."),
            ),
          ],
        ),
      ),
    );
  }
}
