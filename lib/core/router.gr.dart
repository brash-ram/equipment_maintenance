// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    EquipmentComplexListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EquipmentComplexListScreen(),
      );
    },
    EquipmentListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EquipmentListScreen(),
      );
    },
    EquipmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EquipmentScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [EquipmentComplexListScreen]
class EquipmentComplexListRoute extends PageRouteInfo<void> {
  const EquipmentComplexListRoute({List<PageRouteInfo>? children})
      : super(
          EquipmentComplexListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EquipmentComplexListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EquipmentListScreen]
class EquipmentListRoute extends PageRouteInfo<void> {
  const EquipmentListRoute({List<PageRouteInfo>? children})
      : super(
          EquipmentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EquipmentListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EquipmentScreen]
class EquipmentRoute extends PageRouteInfo<void> {
  const EquipmentRoute({List<PageRouteInfo>? children})
      : super(
          EquipmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'EquipmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
