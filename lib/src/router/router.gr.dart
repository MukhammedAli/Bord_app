// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    DashBoardScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DashBoardScreenRouteArgs>(
          orElse: () => const DashBoardScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DashBoardScreen(key: args.key),
      );
    },
    RegistrationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Registration(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignIn(key: args.key),
      );
    },
    VerificationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: VerificationScreen(
          key: args.key,
          phone: args.phone,
        ),
      );
    },
    TestPageRoute.name: (routeData) {
      final args = routeData.argsAs<TestPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TestPage(
          key: args.key,
          token: args.token,
        ),
      );
    },
    MainPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    SearchPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    BookmarkPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BookmarkPage(),
      );
    },
    BookingPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BookingPage(),
      );
    },
    NotificationsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NotificationsPage(),
      );
    },
    DetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsPageRouteArgs>(
          orElse: () => const DetailsPageRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailsPage(key: args.key),
      );
    },
    PlacesPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PlacesPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          DashBoardScreenRoute.name,
          path: 'dashboard',
        ),
        RouteConfig(
          RegistrationRoute.name,
          path: 'register',
        ),
        RouteConfig(
          SignInRoute.name,
          path: 'signin',
        ),
        RouteConfig(
          VerificationScreenRoute.name,
          path: 'verification',
        ),
        RouteConfig(
          TestPageRoute.name,
          path: 'testpage',
        ),
        RouteConfig(
          MainPageRoute.name,
          path: 'mainpage',
        ),
        RouteConfig(
          SearchPageRoute.name,
          path: 'searchpage',
        ),
        RouteConfig(
          BookmarkPageRoute.name,
          path: 'bookmarkpage',
        ),
        RouteConfig(
          BookingPageRoute.name,
          path: 'bookingpage',
        ),
        RouteConfig(
          NotificationsPageRoute.name,
          path: 'notificationspage',
        ),
        RouteConfig(
          DetailsPageRoute.name,
          path: 'detailspage',
        ),
        RouteConfig(
          PlacesPageRoute.name,
          path: 'detailspage',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [DashBoardScreen]
class DashBoardScreenRoute extends PageRouteInfo<DashBoardScreenRouteArgs> {
  DashBoardScreenRoute({Key? key})
      : super(
          DashBoardScreenRoute.name,
          path: 'dashboard',
          args: DashBoardScreenRouteArgs(key: key),
        );

  static const String name = 'DashBoardScreenRoute';
}

class DashBoardScreenRouteArgs {
  const DashBoardScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DashBoardScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [Registration]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: 'register',
        );

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [SignIn]
class SignInRoute extends PageRouteInfo<SignInRouteArgs> {
  SignInRoute({Key? key})
      : super(
          SignInRoute.name,
          path: 'signin',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [VerificationScreen]
class VerificationScreenRoute
    extends PageRouteInfo<VerificationScreenRouteArgs> {
  VerificationScreenRoute({
    Key? key,
    required String phone,
  }) : super(
          VerificationScreenRoute.name,
          path: 'verification',
          args: VerificationScreenRouteArgs(
            key: key,
            phone: phone,
          ),
        );

  static const String name = 'VerificationScreenRoute';
}

class VerificationScreenRouteArgs {
  const VerificationScreenRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'VerificationScreenRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [TestPage]
class TestPageRoute extends PageRouteInfo<TestPageRouteArgs> {
  TestPageRoute({
    Key? key,
    required String token,
  }) : super(
          TestPageRoute.name,
          path: 'testpage',
          args: TestPageRouteArgs(
            key: key,
            token: token,
          ),
        );

  static const String name = 'TestPageRoute';
}

class TestPageRouteArgs {
  const TestPageRouteArgs({
    this.key,
    required this.token,
  });

  final Key? key;

  final String token;

  @override
  String toString() {
    return 'TestPageRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [MainPage]
class MainPageRoute extends PageRouteInfo<void> {
  const MainPageRoute()
      : super(
          MainPageRoute.name,
          path: 'mainpage',
        );

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [SearchPage]
class SearchPageRoute extends PageRouteInfo<void> {
  const SearchPageRoute()
      : super(
          SearchPageRoute.name,
          path: 'searchpage',
        );

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [BookmarkPage]
class BookmarkPageRoute extends PageRouteInfo<void> {
  const BookmarkPageRoute()
      : super(
          BookmarkPageRoute.name,
          path: 'bookmarkpage',
        );

  static const String name = 'BookmarkPageRoute';
}

/// generated route for
/// [BookingPage]
class BookingPageRoute extends PageRouteInfo<void> {
  const BookingPageRoute()
      : super(
          BookingPageRoute.name,
          path: 'bookingpage',
        );

  static const String name = 'BookingPageRoute';
}

/// generated route for
/// [NotificationsPage]
class NotificationsPageRoute extends PageRouteInfo<void> {
  const NotificationsPageRoute()
      : super(
          NotificationsPageRoute.name,
          path: 'notificationspage',
        );

  static const String name = 'NotificationsPageRoute';
}

/// generated route for
/// [DetailsPage]
class DetailsPageRoute extends PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({Key? key})
      : super(
          DetailsPageRoute.name,
          path: 'detailspage',
          args: DetailsPageRouteArgs(key: key),
        );

  static const String name = 'DetailsPageRoute';
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PlacesPage]
class PlacesPageRoute extends PageRouteInfo<void> {
  const PlacesPageRoute()
      : super(
          PlacesPageRoute.name,
          path: 'detailspage',
        );

  static const String name = 'PlacesPageRoute';
}
