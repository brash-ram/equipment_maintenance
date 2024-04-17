import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widget/screen/equipment/equipment_screen.dart';
import '../widget/screen/equipment_complex_list/equipment_complex_list_screen.dart';
import '../widget/screen/equipment_table/equipment_table_screen.dart';
import '../widget/screen/home/home_screen.dart';
import 'empty_router_pages.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter({
    super.navigatorKey,
  });

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: '/home',
      initial: true,
      children: [
        AutoRoute(
          page: EmptyRouter.page,
          path: 'equipmentList',
          initial: true,
          children: [
            AutoRoute(
              page: EquipmentTableRoute.page,
              path: '',
            ),
            AutoRoute(
              page: EquipmentRoute.page,
              path: 'equipment',
            ),
          ]
        ),
        AutoRoute(
          page: EquipmentComplexListRoute.page,
          path: 'equipmentComplexList',
        ),
      ],
    ),
  ];
}
