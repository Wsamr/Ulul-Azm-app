import 'package:final_quran_app/Manager/Books/BooksStatus.dart';
import 'package:final_quran_app/model/BookModel.dart';
import 'package:final_quran_app/services/BooksAPI/BookApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookscubit extends Cubit<BooksStates> {
  Bookscubit() : super(BookInitalStates());

  getBooks() async {
    BookApi Book = BookApi();
    emit(BookLoadingStates());
    var json =await Book.getBooksApi();
    List<BookModel> k = [];
    try {
      for (var i in json["data"]) {
        k.add(BookModel(title: i["title"],description: i["description"],url: i["attachments"][0]["url"]));
      }
      emit(BookLoadedStates(books: k));
    } on Exception catch (erroe) {
      emit(BookErrorStates(massege: erroe.toString()));
    }
  }
}
