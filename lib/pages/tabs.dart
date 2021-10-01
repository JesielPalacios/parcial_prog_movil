import 'package:flutter/material.dart';
import 'package:parcial_prog_movil/pages/menuTabs/conversionesNumericas/estructura.dart';
import 'package:parcial_prog_movil/pages/menuTabs/operacionesBinarios/estructura.dart';
import 'package:parcial_prog_movil/pages/menuTabs/operacionesLogicas/estructura.dart';
import 'package:parcial_prog_movil/pages/tabbarpersonalizado.dart';

class NavegacionMenuTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavegacionMenuTabBar();
  }
}

class _NavegacionMenuTabBar extends State<NavegacionMenuTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: TabBarView(
            children: [
              EstructuraConversiones(),
              EstructuraOperacionesBinarios(),
              EstructuraOperacionesLogicas()
            ],
          ),
          bottomNavigationBar: SizedBox(
            height: 58,
            child: TabBarPersonalizado(
                Colors.blue,
                TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                        text: 'Conversor',
                        icon: Icon(Icons.transform),
                        iconMargin: const EdgeInsets.only(bottom: 2.0)),
                    Tab(
                        text: 'Op Binarios',
                        icon: Icon(Icons.calculate),
                        iconMargin: const EdgeInsets.only(bottom: 2.0)),
                    Tab(
                        text: 'Op Lógicas',
                        icon: Icon(Icons.border_right_sharp),
                        iconMargin: const EdgeInsets.only(bottom: 2.0)),
                  ],
                )),
          )),
    );
  }
}
