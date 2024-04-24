import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:diplomproject2/src/features/presentation/widgets/man_container.dart';
import 'package:flutter/material.dart';

class PrepodavatelskoeSostav extends StatelessWidget {
  const PrepodavatelskoeSostav({super.key});
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
                          Text("ПРЕПОДАВАТЕЛЬСКИЙ",
                              style: AppTextStyle.f25cWhite),
                          Text("СОСТАВ", style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("ПРЕПОДАВАТЕЛЬСКИЙ СОСТАВ")),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: const <Widget>[
                  ManContainer(image: "1", name: "Азимов Бектур"),
                  ManContainer(image: "2", name: "Турсунов Дилмурат"),
                  ManContainer(image: "3", name: "Асылбеков Таалай"),
                  ManContainer(image: "4", name: "Зулпукарова Дамира"),
                  ManContainer(image: "5", name: "Артыкова Жылдыз"),
                  ManContainer(image: "6", name: "Пирматов Абдыманап"),
                  ManContainer(
                      image: "7", name: "Жолдошов Толкунбек", extention: "png"),
                  ManContainer(
                      image: "8",
                      name: "Турдубеков Бурканбек",
                      extention: "jpg"),
                  ManContainer(image: "9", name: "Тажибаев Карыбек"),
                  ManContainer(image: "10", name: "Жээнбаев Нурлан"),
                  ManContainer(
                      image: "11",
                      name: "Жакыпбекова Атыргүл",
                      extention: "jpg"),
                  ManContainer(image: "12", name: "Кулчинова Гүлшайыр"),
                  ManContainer(image: "13", name: "Сманова Нургүл"),
                  ManContainer(image: "14", name: "Шамшиева Гүлмира"),
                  ManContainer(image: "15", name: "Гаипова Суйута"),
                  ManContainer(image: "16", name: "Эргешов Мансурбек"),
                  ManContainer(image: "17", name: "Бекмурза у Ыбадылла"),
                  ManContainer(
                      image: "18", name: "Камалов Султанбек", extention: "png"),
                  ManContainer(image: "19", name: "Орозали к Нуриза"),
                  ManContainer(image: "20", name: "Бектемир у Дүйшөнбек"),
                  ManContainer(image: "21", name: "Камбар к Жамал"),
                  ManContainer(image: "22", name: "Равшан у Сыймык"),
                  ManContainer(image: "23", name: "Абдивоситова Айтолкун"),
                  ManContainer(image: "24", name: "Хасанбай к Уулбүбү"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Image(
              image: AssetImage("assets/mans/professors.png"),
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
