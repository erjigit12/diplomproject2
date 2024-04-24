import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';

class ObrazovatelnaiaKulturnaia extends StatelessWidget {
  const ObrazovatelnaiaKulturnaia({super.key});
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
                          Text("СОЦИАЛЬНАЯ И СПОРТИВНАЯ",
                              style: AppTextStyle.f25cWhite),
                          Text("ДЕЯТЕЛЬНОСТЬ",
                              style: AppTextStyle.f40wboldcWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("Связи с общественностью")),
            const SizedBox(height: 15),
            const Center(
                child: Text(
                    "Кафедра активно участвует и организует различные общественные, научные, культурные мероприятия на факультете, вузе, городе и республике."
                    "Протоколы, фотографии и презентации всех организованных мероприятий прилагаются.")),
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman1.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman2.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman3.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman4.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman5.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman6.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman7.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Image(
                image: AssetImage("assets/images/aman8.png"),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
