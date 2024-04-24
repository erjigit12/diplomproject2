import 'package:diplomproject2/src/features/presentation/memeber_pages/co-worker_name.dart';
import 'package:diplomproject2/src/features/presentation/memeber_pages/default_page.dart';
import 'package:flutter/material.dart';

class PopupMenuWidget extends StatefulWidget {
  const PopupMenuWidget({
    super.key,
  });

  @override
  State<PopupMenuWidget> createState() => _PopupMenuWidgetState();
}

enum _MenuValues { man1, man2, man3, man4, man5 }

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.menu),
      iconColor: Colors.white,
      iconSize: 30,
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: _MenuValues.man1,
          child: Text("Азимов Бектур Абдырахманович"),
        ),
        const PopupMenuItem(
          value: _MenuValues.man2,
          child: Text("Турсунов Дилмурат Абдилажанович"),
        ),
        const PopupMenuItem(
          value: _MenuValues.man3,
          child: Text("Асылбеков Таалай Дуконбаевич"),
        ),
        const PopupMenuItem(
          value: _MenuValues.man4,
          child: Text("Зулпукарова Дамира Исмаиловна"),
        ),
        const PopupMenuItem(
          value: _MenuValues.man5,
          child: Text("Пирматов Абдыманап Заяйдинович"),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case _MenuValues.man1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoWorkersName(
                  qrImage: "assets/qr/azimovb.jfif",
                  nameCoWorker: "Азимов Бектур Абдырахманович",
                ),
              ),
            );

          case _MenuValues.man2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoWorkersName(
                  qrImage: "assets/qr/tursunovd.jfif",
                  nameCoWorker: "Турсунов Дилмурат Абдилажанович",
                ),
              ),
            );

          case _MenuValues.man3:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoWorkersName(
                  qrImage: "assets/qr/asylbekovt.jfif",
                  nameCoWorker: "Асылбеков Таалай Дуконбаевич",
                ),
              ),
            );

          case _MenuValues.man4:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoWorkersName(
                  qrImage: "assets/qr/sulpukarovad.jfif",
                  nameCoWorker: "Зулпукарова Дамира Исмаиловна",
                ),
              ),
            );

          case _MenuValues.man5:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoWorkersName(
                  qrImage: "assets/qr/pirmatova.jfif",
                  nameCoWorker: "Пирматов Абдыманап Заяйдинович",
                ),
              ),
            );

          default:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DefaultPage(),
              ),
            );
        }
      },
    );
  }
}
