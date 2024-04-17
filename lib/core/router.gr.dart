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
    EmptyRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmptyRouterPage(),
      );
    },
    EquipmentComplexListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EquipmentComplexListScreen(),
      );
    },
    EquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<EquipmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EquipmentScreen(
          key: args.key,
          equipmentId: args.equipmentId,
          readonly: args.readonly,
        ),
      );
    },
    EquipmentTableRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EquipmentTableScreen(),
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
/// [EmptyRouterPage]
class EmptyRouter extends PageRouteInfo<void> {
  const EmptyRouter({List<PageRouteInfo>? children})
      : super(
          EmptyRouter.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [EquipmentScreen]
class EquipmentRoute extends PageRouteInfo<EquipmentRouteArgs> {
  EquipmentRoute({
    Key? key,
    required String equipmentId,
    required bool readonly,
    List<PageRouteInfo>? children,
  }) : super(
          EquipmentRoute.name,
          args: EquipmentRouteArgs(
            key: key,
            equipmentId: equipmentId,
            readonly: readonly,
          ),
          initialChildren: children,
        );

  static const String name = 'EquipmentRoute';

  static const PageInfo<EquipmentRouteArgs> page =
      PageInfo<EquipmentRouteArgs>(name);
}

class EquipmentRouteArgs {
  const EquipmentRouteArgs({
    this.key,
    required this.equipmentId,
    required this.readonly,
  });

  final Key? key;

  final String equipmentId;

  final bool readonly;

  @override
  String toString() {
    return 'EquipmentRouteArgs{key: $key, equipmentId: $equipmentId, readonly: $readonly}';
  }
}

/// generated route for
/// [EquipmentTableScreen]
class EquipmentTableRoute extends PageRouteInfo<void> {
  const EquipmentTableRoute({List<PageRouteInfo>? children})
      : super(
          EquipmentTableRoute.name,
          initialChildren: children,
        );

  static const String name = 'EquipmentTableRoute';

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
