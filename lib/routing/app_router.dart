import 'package:auto_route/auto_route.dart';
import 'package:faramove_test/modules/account/views/account.dart';
import 'package:faramove_test/modules/community/views/community.dart';
import 'package:faramove_test/modules/home/views/home.dart';
import 'package:faramove_test/modules/home/views/podcast_playing.dart';
import 'package:faramove_test/modules/resources/views/resources.dart';
import 'package:faramove_test/modules/session/views/session.dart';
import 'package:faramove_test/routing/route_main_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: RouteMainScreen, children: [
      AutoRoute(path: 'home', initial: true, page: Home),
      AutoRoute(path: 'resources', page: Resources),
      AutoRoute(path: 'session', page: Session),
      AutoRoute(path: 'community', page: Community),
      AutoRoute(path: 'account', page: Account)
    ]),
    CustomRoute(
        path: 'podcastplaying',
        page: PodcastPlaying,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        reverseDurationInMilliseconds: 300,
        durationInMilliseconds: 300),
  ],
)
class AppRouter extends _$AppRouter {}
