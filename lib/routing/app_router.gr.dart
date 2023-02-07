// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RouteMainScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RouteMainScreen(),
      );
    },
    PodcastPlayingRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PodcastPlaying(),
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        reverseDurationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Home(),
      );
    },
    ResourcesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Resources(),
      );
    },
    SessionRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Session(),
      );
    },
    CommunityRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Community(),
      );
    },
    AccountRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Account(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          RouteMainScreenRoute.name,
          path: '/',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: RouteMainScreenRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: RouteMainScreenRoute.name,
            ),
            RouteConfig(
              ResourcesRoute.name,
              path: 'resources',
              parent: RouteMainScreenRoute.name,
            ),
            RouteConfig(
              SessionRoute.name,
              path: 'session',
              parent: RouteMainScreenRoute.name,
            ),
            RouteConfig(
              CommunityRoute.name,
              path: 'community',
              parent: RouteMainScreenRoute.name,
            ),
            RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: RouteMainScreenRoute.name,
            ),
          ],
        ),
        RouteConfig(
          PodcastPlayingRoute.name,
          path: 'podcastplaying',
        ),
      ];
}

/// generated route for
/// [RouteMainScreen]
class RouteMainScreenRoute extends PageRouteInfo<void> {
  const RouteMainScreenRoute({List<PageRouteInfo>? children})
      : super(
          RouteMainScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RouteMainScreenRoute';
}

/// generated route for
/// [PodcastPlaying]
class PodcastPlayingRoute extends PageRouteInfo<void> {
  const PodcastPlayingRoute()
      : super(
          PodcastPlayingRoute.name,
          path: 'podcastplaying',
        );

  static const String name = 'PodcastPlayingRoute';
}

/// generated route for
/// [Home]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [Resources]
class ResourcesRoute extends PageRouteInfo<void> {
  const ResourcesRoute()
      : super(
          ResourcesRoute.name,
          path: 'resources',
        );

  static const String name = 'ResourcesRoute';
}

/// generated route for
/// [Session]
class SessionRoute extends PageRouteInfo<void> {
  const SessionRoute()
      : super(
          SessionRoute.name,
          path: 'session',
        );

  static const String name = 'SessionRoute';
}

/// generated route for
/// [Community]
class CommunityRoute extends PageRouteInfo<void> {
  const CommunityRoute()
      : super(
          CommunityRoute.name,
          path: 'community',
        );

  static const String name = 'CommunityRoute';
}

/// generated route for
/// [Account]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}
