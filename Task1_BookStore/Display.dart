import 'Display.dart';
import 'dart:io';

void main() {
  print("");
  print("");
  print("----------------  Book Store  ----------------");

  for (int i = 0;; i++) {
    print("");
    print(
        "Main menu \n 1- Display all books \n 2- Display books with rate +4 \n 3- Add book  \n 4- Update book  \n 5- Delete book \n 6- Search \n 7- CLOSE");

    books book = new books(names: "", authors: "", rates: 0);

    stdout.write(" Write your choice: ");

    int? choice = int.parse(stdin.readLineSync()!);

    if (choice == 7) {
      exit(0);
    } else if (choice == 1) {
      book.Display_books;
    } else if (choice == 2) {
      book.Display_books_with_rate4;
    } else if (choice == 3) {
      book.set_books();
    } else if (choice == 4) {
      book.Update_books();
    } else if (choice == 5) {
      book.del_books();
    } else if (choice == 6) {
      book.Search_books();
    }
  }

  
}
