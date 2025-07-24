import 'package:final_quran_app/model/BookModel.dart';

class BooksStates{}
class BookInitalStates extends BooksStates{}
class BookLoadingStates extends BooksStates{}
class BookLoadedStates extends BooksStates{
  List<BookModel> books;
  BookLoadedStates({required this.books});
}
class BookErrorStates extends BooksStates{
  String massege;
  BookErrorStates({required this.massege});
}