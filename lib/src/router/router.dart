import 'package:auto_route/auto_route.dart';
import 'package:bord_project/src/screens/auth/pages/booking_page.dart';
import 'package:bord_project/src/screens/auth/pages/bookmark_page.dart';
import 'package:bord_project/src/screens/auth/pages/details_page.dart';
import 'package:bord_project/src/screens/auth/pages/log_in.dart';
import 'package:bord_project/src/screens/auth/pages/main_page.dart';
import 'package:bord_project/src/screens/auth/pages/notifications_page.dart';
import 'package:bord_project/src/screens/auth/pages/places_page.dart';
import 'package:bord_project/src/screens/auth/pages/register_page.dart';
import 'package:bord_project/src/screens/auth/pages/search_page.dart';
import 'package:bord_project/src/screens/auth/pages/verification_screen.dart';
import 'package:bord_project/src/screens/dashboard/pages/start_page.dart';
import 'package:bord_project/src/screens/dashboard/pages/test_page.dart';

import 'package:bord_project/src/screens/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: SplashScreen, path: '/'),
    AutoRoute(page: DashBoardScreen, path: 'dashboard'),
    AutoRoute(page: Registration, path: 'register'),
    AutoRoute(page: SignIn, path: 'signin'),
    AutoRoute(page: VerificationScreen, path: 'verification'),
    AutoRoute(page: TestPage, path: 'testpage'),
    AutoRoute(page: MainPage, path: 'mainpage'),
    AutoRoute(page: SearchPage, path: 'searchpage'),
    AutoRoute(page: BookmarkPage, path: 'bookmarkpage'),
    AutoRoute(page: BookingPage, path: 'bookingpage'),
    AutoRoute(page: NotificationsPage, path: 'notificationspage'),
    AutoRoute(page: DetailsPage, path: 'detailspage'),
    AutoRoute(page: PlacesPage, path: 'detailspage'),
  ],
)
class AppRouter extends _$AppRouter {}
