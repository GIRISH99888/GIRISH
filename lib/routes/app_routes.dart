import 'package:itr/presentation/google_login_screen/google_login_screen.dart';
import 'package:itr/presentation/google_login_screen/binding/google_login_binding.dart';
import 'package:itr/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:itr/presentation/account_creation_screen/binding/account_creation_binding.dart';
import 'package:itr/presentation/splash_screen/splash_screen.dart';
import 'package:itr/presentation/splash_screen/binding/splash_binding.dart';
import 'package:itr/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:itr/presentation/terms_and_conditions_screen/binding/terms_and_conditions_binding.dart';
import 'package:itr/presentation/blog_posts_management_screen/blog_posts_management_screen.dart';
import 'package:itr/presentation/blog_posts_management_screen/binding/blog_posts_management_binding.dart';
import 'package:itr/presentation/manage_blog_comments_screen/manage_blog_comments_screen.dart';
import 'package:itr/presentation/manage_blog_comments_screen/binding/manage_blog_comments_binding.dart';
import 'package:itr/presentation/blog_importing_screen/blog_importing_screen.dart';
import 'package:itr/presentation/blog_importing_screen/binding/blog_importing_binding.dart';
import 'package:itr/presentation/community_forum_screen/community_forum_screen.dart';
import 'package:itr/presentation/community_forum_screen/binding/community_forum_binding.dart';
import 'package:itr/presentation/interactive_faqs_screen/interactive_faqs_screen.dart';
import 'package:itr/presentation/interactive_faqs_screen/binding/interactive_faqs_binding.dart';
import 'package:itr/presentation/pagination_screen/pagination_screen.dart';
import 'package:itr/presentation/pagination_screen/binding/pagination_binding.dart';
import 'package:itr/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:itr/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String googleLoginScreen = '/google_login_screen';

  static String accountCreationScreen = '/account_creation_screen';

  static String splashScreen = '/splash_screen';

  static String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static String blogPostsManagementScreen = '/blog_posts_management_screen';

  static String manageBlogCommentsScreen = '/manage_blog_comments_screen';

  static String blogImportingScreen = '/blog_importing_screen';

  static String communityForumScreen = '/community_forum_screen';

  static String interactiveFaqsScreen = '/interactive_faqs_screen';

  static String paginationScreen = '/pagination_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: googleLoginScreen,
      page: () => GoogleLoginScreen(),
      bindings: [
        GoogleLoginBinding(),
      ],
    ),
    GetPage(
      name: accountCreationScreen,
      page: () => AccountCreationScreen(),
      bindings: [
        AccountCreationBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: termsAndConditionsScreen,
      page: () => TermsAndConditionsScreen(),
      bindings: [
        TermsAndConditionsBinding(),
      ],
    ),
    GetPage(
      name: blogPostsManagementScreen,
      page: () => BlogPostsManagementScreen(),
      bindings: [
        BlogPostsManagementBinding(),
      ],
    ),
    GetPage(
      name: manageBlogCommentsScreen,
      page: () => ManageBlogCommentsScreen(),
      bindings: [
        ManageBlogCommentsBinding(),
      ],
    ),
    GetPage(
      name: blogImportingScreen,
      page: () => BlogImportingScreen(),
      bindings: [
        BlogImportingBinding(),
      ],
    ),
    GetPage(
      name: communityForumScreen,
      page: () => CommunityForumScreen(),
      bindings: [
        CommunityForumBinding(),
      ],
    ),
    GetPage(
      name: interactiveFaqsScreen,
      page: () => InteractiveFaqsScreen(),
      bindings: [
        InteractiveFaqsBinding(),
      ],
    ),
    GetPage(
      name: paginationScreen,
      page: () => PaginationScreen(),
      bindings: [
        PaginationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => GoogleLoginScreen(),
      bindings: [
        GoogleLoginBinding(),
      ],
    )
  ];
}
