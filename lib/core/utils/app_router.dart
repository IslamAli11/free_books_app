 import 'package:free_books_app/feature/book_details/book_dwtails_view.dart';
import 'package:free_books_app/feature/home/home_page.dart';
import 'package:free_books_app/feature/search/Search_page.dart';
import 'package:free_books_app/feature/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
    static const homePage = '/homepage';
    static const searchPage= '/SearchPage';

   static final router = GoRouter(
     routes: [
       GoRoute(
         path: '/',
         builder: (context, state) => const SplashPage(),
       ),
       GoRoute(
         path: homePage,
         builder: (context, state) => const HomePage(),
       ),
       GoRoute(
         path: searchPage,
         builder: (context, state) =>  SearchPage(),
       ),
     ],
   );



 }