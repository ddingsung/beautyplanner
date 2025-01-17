import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const TestPracticeWidget()
          : const OnbordingCopyCopy2CopyWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const TestPracticeWidget()
              : const OnbordingCopyCopy2CopyWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'createID',
          path: '/createID',
          builder: (context, params) => const CreateIDWidget(),
        ),
        FFRoute(
          name: 'Onboarding01',
          path: '/onboarding01',
          builder: (context, params) => const Onboarding01Widget(),
        ),
        FFRoute(
          name: 'Details12SocialPost',
          path: '/details12SocialPost',
          builder: (context, params) => const Details12SocialPostWidget(),
        ),
        FFRoute(
          name: 'Details13PropertyHouse',
          path: '/details13PropertyHouse',
          builder: (context, params) => Details13PropertyHouseWidget(
            index: params.getParam(
              'index',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'List05Products',
          path: '/list05Products',
          builder: (context, params) => const List05ProductsWidget(),
        ),
        FFRoute(
          name: 'TestPractice',
          path: '/testPractice',
          builder: (context, params) => const TestPracticeWidget(),
        ),
        FFRoute(
          name: 'recommended_plan_page',
          path: '/recommendedPlanPage',
          builder: (context, params) => const RecommendedPlanPageWidget(),
        ),
        FFRoute(
          name: 'user_plan_result',
          path: '/userPlanResult',
          builder: (context, params) => UserPlanResultWidget(
            userSelectedList: params.getParam<String>(
              'userSelectedList',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'user_plan_result_detail',
          path: '/userPlanResultDetail',
          builder: (context, params) => const UserPlanResultDetailWidget(),
        ),
        FFRoute(
          name: 'user_plan_set_day',
          path: '/userPlanSetDay',
          builder: (context, params) => const UserPlanSetDayWidget(),
        ),
        FFRoute(
          name: 'dasd',
          path: '/dasd',
          builder: (context, params) => const DasdWidget(),
        ),
        FFRoute(
          name: 'user_plan_decision',
          path: '/userPlanDecision',
          builder: (context, params) => const UserPlanDecisionWidget(),
        ),
        FFRoute(
          name: 'mypage',
          path: '/mypage',
          builder: (context, params) => const MypageWidget(),
        ),
        FFRoute(
          name: 'order_history',
          path: '/orderHistory',
          builder: (context, params) => const OrderHistoryWidget(),
        ),
        FFRoute(
          name: 'order_history_detail',
          path: '/orderHistoryDetail',
          builder: (context, params) => OrderHistoryDetailWidget(
            orderId: params.getParam(
              'orderId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'product_list',
          path: '/productList',
          builder: (context, params) => const ProductListWidget(),
        ),
        FFRoute(
          name: 'product_detail',
          path: '/productDetail',
          builder: (context, params) => ProductDetailWidget(
            productUid: params.getParam(
              'productUid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'onbordingCopy',
          path: '/onbordingCopy',
          builder: (context, params) => const OnbordingCopyWidget(),
        ),
        FFRoute(
          name: 'lottieTest',
          path: '/lottieTest',
          builder: (context, params) => const LottieTestWidget(),
        ),
        FFRoute(
          name: 'onbordingCopyCopy2',
          path: '/onbordingCopyCopy2',
          builder: (context, params) => const OnbordingCopyCopy2Widget(),
        ),
        FFRoute(
          name: 'onbordingCopyCopy2Copy',
          path: '/onbordingCopyCopy2Copy',
          builder: (context, params) => const OnbordingCopyCopy2CopyWidget(),
        ),
        FFRoute(
          name: 'cart',
          path: '/cart',
          builder: (context, params) => CartWidget(
            userUid: params.getParam(
              'userUid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'alliance_detail',
          path: '/allianceDetail',
          builder: (context, params) => const AllianceDetailWidget(),
        ),
        FFRoute(
          name: 'customer_support',
          path: '/customerSupport',
          builder: (context, params) => const CustomerSupportWidget(),
        ),
        FFRoute(
          name: 'search_image',
          path: '/searchImage',
          builder: (context, params) => const SearchImageWidget(),
        ),
        FFRoute(
          name: 'product_qna',
          path: '/productQna',
          builder: (context, params) => const ProductQnaWidget(),
        ),
        FFRoute(
          name: 'product_qna_write',
          path: '/productQnaWrite',
          builder: (context, params) => const ProductQnaWriteWidget(),
        ),
        FFRoute(
          name: 'search_page',
          path: '/searchPage',
          builder: (context, params) => const SearchPageWidget(),
        ),
        FFRoute(
          name: 'product_qna_result',
          path: '/productQnaResult',
          builder: (context, params) => const ProductQnaResultWidget(),
        ),
        FFRoute(
          name: 'createAccount1',
          path: '/createAccount1',
          builder: (context, params) => CreateAccount1Widget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'createAccount2',
          path: '/createAccount2',
          builder: (context, params) => const CreateAccount2Widget(),
        ),
        FFRoute(
          name: 'createAccount3',
          path: '/createAccount3',
          builder: (context, params) => CreateAccount3Widget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            nickName: params.getParam(
              'nickName',
              ParamType.String,
            ),
            dateOfBirth: params.getParam(
              'dateOfBirth',
              ParamType.DateTime,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            profileImg: params.getParam(
              'profileImg',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'createAccount4',
          path: '/createAccount4',
          builder: (context, params) => CreateAccount4Widget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            nickName: params.getParam(
              'nickName',
              ParamType.String,
            ),
            dateOfBirth: params.getParam(
              'dateOfBirth',
              ParamType.DateTime,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            profileImg: params.getParam(
              'profileImg',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'auth_phone',
          path: '/authPhone',
          builder: (context, params) => const AuthPhoneWidget(),
        ),
        FFRoute(
          name: 'auth_phone2',
          path: '/authPhone2',
          builder: (context, params) => const AuthPhone2Widget(),
        ),
        FFRoute(
          name: 'auth_phone3',
          path: '/authPhone3',
          builder: (context, params) => const AuthPhone3Widget(),
        ),
        FFRoute(
          name: 'createAccountToEmail',
          path: '/createAccountToEmail',
          builder: (context, params) => const CreateAccountToEmailWidget(),
        ),
        FFRoute(
          name: 'email_login',
          path: '/emailLogin',
          builder: (context, params) => const EmailLoginWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onbordingCopyCopy2Copy';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
