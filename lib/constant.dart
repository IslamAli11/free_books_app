
import 'package:flutter/material.dart';
import 'package:free_books_app/core/model/book_model/book_model.dart';
import 'package:free_books_app/feature/business/business_page.dart';
import 'package:free_books_app/feature/science/science_page.dart';
import 'package:free_books_app/feature/sports/sports_page.dart';


const backgroundColor = Color(0xff2B475E);

List<BottomNavigationBarItem> bottomBarItem = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.sports),
    label: 'Sports',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.science),
    label: 'Science',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.business),
    label: 'Business',
  ),
];


List<String>title = [
  'SPORTS',
  'SCIENCE',
  'BUSINESS',
];
List<Widget> screen = [

   SportsPage(),
  const SciencePage(),
  const BusinessPage(),
];