// ignore_for_file: deprecated_member_use

import 'package:diplomproject2/src/features/presentation/page/contact.dart';
import 'package:diplomproject2/src/features/presentation/page/historical_kafedry.dart';
import 'package:diplomproject2/src/features/presentation/page/ish_plandary.dart';
import 'package:diplomproject2/src/features/presentation/page/isledovatelskoe_deatelnost.dart';
import 'package:diplomproject2/src/features/presentation/page/kuratory.dart';
import 'package:diplomproject2/src/features/presentation/page/mobilnost.dart';
import 'package:diplomproject2/src/features/presentation/page/nauchno_isledovatelskoe.dart';
import 'package:diplomproject2/src/features/presentation/page/nauchnye_rabotu.dart';
import 'package:diplomproject2/src/features/presentation/page/obrazovatelnaia_kulternaia.dart';
import 'package:diplomproject2/src/features/presentation/page/obrazovatelnye_programmy.dart';
import 'package:diplomproject2/src/features/presentation/page/praktica.dart';
import 'package:diplomproject2/src/features/presentation/page/prepodavatelskoe_sostav.dart';
import 'package:diplomproject2/src/features/presentation/page/sluzhba_seli.dart';
import 'package:diplomproject2/src/features/presentation/page/spesialnost.dart';
import 'package:diplomproject2/src/features/presentation/page/uchastie_urokah.dart';
import 'package:diplomproject2/src/features/presentation/page/uchebna_metodichestyi_rabotu.dart';
import 'package:diplomproject2/src/features/presentation/page/uchebnye_posobie.dart';
import 'package:diplomproject2/src/features/presentation/page/uchebnyi_zavedenyia.dart';
import 'package:diplomproject2/src/features/presentation/page/ustat_shakirt.dart';
import 'package:diplomproject2/src/features/presentation/widgets/menu_tap_widget.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                image: DecorationImage(
                  image: AssetImage('assets/images/oshmu.png'),
                  fit: BoxFit.contain,
                ),
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
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.adjust,
                              size: 30,
                              color: Color(0xFF5C1ED7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoricalKafedry(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "ИСТОРИЯ КАФЕДРЫ",
              // subTitle: "Introduction",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SluzhbaSeli(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "СЛУЖБА, ЦЕЛИ И ЗАДАЧИ ОТДЕЛА",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IsledovatelskoeDeatelnost(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "ИССЛЕДОВАТЕЛЬСКАЯ ДЕЯТЕЛЬНОСТЬ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NauchnyeRabotu(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "НАУЧНЫЕ РАБОТЫ КАФЕДРЫ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const NauchnoIsledovatelskoeDeatelnost(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ДЕЯТЕЛЬНОСТЬ СТУДЕНТОВ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {},
              color: const Color(0xFFCC78EA),
              title: "СПИСОК ВЫПУСКНИКОВ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Praktica(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "ПРАКТИКА",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Mobilnost(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "МОБИЛЬНОСТЬ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UstatShakirt(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "УСТАТ ШАКИРТ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Spesialnost(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "СПЕЦИАЛЬНОСТИ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ObrazovatelnyeProgrammy(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "ОБРАЗОВАТЕЛЬНЫЕ ПРОГРАММЫ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrepodavatelskoeSostav(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "ПРЕПОДАВАТЕЛЬСКИЙ СОСТАВ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ObrazovatelnaiaKulturnaia(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title:
                  "ОБРАЗОВАТЕЛЬНАЯ, КУЛЬТУРНО-МАССОВАЯ, СОЦИАЛЬНАЯ И СПОРТИВНАЯ ДЕЯТЕЛЬНОСТЬ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UchebnyePosobye(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "УЧЕБНЫЕ ПОСОБИЯ И КНИГИ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UchebnaMetodichestyiRabotu(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "УЧЕБНО-МЕТОДИЧЕСКИЕ РАБОТЫ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UchebnyiZavedenyia(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title:
                  "СВЯЗЬ С ДРУГИМИ НАУЧНЫМИ УЧРЕЖДЕНИЯМИ, ВЫСШИМИ УЧЕБНЫМИ ЗАВЕДЕНИЯМИ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IshPlandary(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "ИШ ПЛАН",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UchastieUrokah(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "УЧАСТИЕ ВО ВЗАИМНЫХ УРОКАХ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Kuratory(),
                  ),
                );
              },
              color: const Color(0xFF5C1ED7),
              title: "КУРАТОРЫ",
              // subTitle: "Jobs and School",
            ),
            MenuTapWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Contact(),
                  ),
                );
              },
              color: const Color(0xFFCC78EA),
              title: "КОНТАКТЫ",
              // subTitle: "Jobs and School",
            ),
          ],
        ),
      ),
    );
  }
}
