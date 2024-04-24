import 'package:diplomproject2/src/features/presentation/menu_page.dart';
import 'package:diplomproject2/src/features/presentation/widgets/popup_menu_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(160),
                ),
                color: Color(0xFF5C1ED7),
                image: DecorationImage(
                  image: AssetImage('assets/images/oshmu.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: const Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 20,
                    left: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        PopupMenuWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 100, top: 30, left: 30, bottom: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MenuPage();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  color: const Color(0xFF5C1ED7),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'START',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
