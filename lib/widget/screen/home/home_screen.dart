import 'package:auto_route/auto_route.dart';
import 'package:equipment_maintenance/core/router.dart';
import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        EquipmentTableRoute(),
        EquipmentComplexListRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedLabelStyle: Theme.of(context).textTheme.labelMedium,
        unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.table_rows),
            label: Translations.of(context).home.table,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            label: Translations.of(context).home.list,
          ),
        ],
      ),
    );
  }
}
