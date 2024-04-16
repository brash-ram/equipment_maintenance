import 'package:auto_route/auto_route.dart';

import '../widget/screen/equipment/equipment_screen.dart';
import '../widget/screen/equipment_complex_list/equipment_complex_list_screen.dart';
import '../widget/screen/equipment_list/equipment_list_screen.dart';
import '../widget/screen/home/home_screen.dart';

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
          page: EquipmentListRoute.page,
          path: 'equipmentList',
          initial: true,
        ),
        AutoRoute(
          page: EquipmentComplexListRoute.page,
          path: 'equipmentComplexList',
        ),
      ],
    ),
    AutoRoute(
      page: EquipmentRoute.page,
      path: '/equipment',
    ),
  ];
}
