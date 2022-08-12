import 'dart:io';

class books {
  String names;
  String authors;
  double rates;
  static List<String?> booksList = [
    "Flutter UI",
    "Ulysses",
    "Don Quixote",
    "learn dart",
    "python django",
  ];
  static List<String?> authorsList = [
    "Google",
    "James Joyce",
    "Miguel de Cervantes",
    "karar falih",
    "Ali hassan",
  ];

  static List<double> ratesList = [3.2, 4.2, 1.2, 4.3, 3.9];

  books({required this.names, required this.authors, required this.rates});

  void set_books() {
    String names1 = this.names;
    String authors1 = this.authors;
    double rates1 = this.rates;

    stdout.write("Enter the count of books want to add: ");

    int? choice = int.parse(stdin.readLineSync()!);

    for (var j = 0; j < choice; j++) {
      stdout.write("Enter book ${j + 1} name: ");
      names1 = stdin.readLineSync()!;

      stdout.write("Enter book ${j + 1} author: ");
      authors1 = stdin.readLineSync()!;

      stdout.write("Enter book ${j + 1} rate: ");
      rates1 = double.parse(stdin.readLineSync()!);

      booksList.add(names1);

      authorsList.add(authors1);
      ratesList.add(rates1);
    }
    var unique_books = booksList.toSet().toList();
    print("Book name         Book author     rate");

    for (var i = 0; i < unique_books.length - 1; i++) {
      print(
          "${unique_books[i]}             ${authorsList[i]}         ${ratesList[i]}");
    }
  }

  void get Display_books {
    var unique_books = booksList.toSet().toList();
    if (unique_books.isEmpty == true) {
      print("There are no Books!");
    } else {
      print("Book name ${" " * 10}Book author${" " * 5}rate");

      for (var i = 0; i < unique_books.length - 1; i++) {
        print(
            "${i + 1}- ${unique_books[i]}${" " * 10}${authorsList[i]}${" " * 10}${ratesList[i]}");
      }
    }
  }

  void get Display_books_with_rate4 {
    var unique_books = booksList.toSet().toList();
    var flags = false;

    if (unique_books.isEmpty == true) {
      print("There are no Books!");
    } else {
      print("Book name         Book author     rate");

      for (var i = 0; i < unique_books.length - 1; i++) {
        if (ratesList[i] >= 4.0) {
          print(
              "${unique_books[i]}             ${authorsList[i]}         ${ratesList[i]}");
          flags = true;
        }
      }
      if (flags == false) {
        print("There are no Books with rate +4!");
      }
    }
  }

  void del_books() {
    var unique_books = booksList.toSet().toList();
    String names1 = this.names;
    stdout.write("Enter the  book name: ");
    names1 = stdin.readLineSync()!;
    var flags2 = false;
    for (var i = 0; i < unique_books.length - 1; i++) {
      if (unique_books[i] == names1) {
        unique_books.removeAt(i);

        print("");
        print("book has been deleted");
        print("");

        print("Book name         Book author     rate");

        for (var j = 0; j < unique_books.length - 1; j++) {
          print(
              "${unique_books[j]}             ${authorsList[j]}         ${ratesList[j]}");
        }
        flags2 = true;

        // break;
      }
    }

    if (flags2 == false) {
      print("There is no Books in this name to be deleted");
    }
  }

  void Update_books() {
    var unique_books = booksList.toSet().toList();
    String names2 = this.names;
    String names1 = this.names;
    String authors1 = this.authors;
    double rates1 = this.rates;

    stdout.write("Enter the book name to Update: ");
    names2 = stdin.readLineSync()!;
    var flags2 = false;
    for (var i = 0; i < unique_books.length - 1; i++) {
      if (unique_books[i] == names2) {
        flags2 = true;

        stdout.write("Enter book name: ");
        names1 = stdin.readLineSync()!;

        stdout.write("Enter book author: ");
        authors1 = stdin.readLineSync()!;

        stdout.write("Enter book  rate: ");
        rates1 = double.parse(stdin.readLineSync()!);

        unique_books[i] = names1;
        authorsList[i] = authors1;
        ratesList[i] = rates1;
        print("");
        print("");

        print("Book name         Book author     rate");

        for (var j = 0; j < unique_books.length - 1; j++) {
          print(
              "${unique_books[j]}             ${authorsList[j]}         ${ratesList[j]}");
        }

        break;
      }
    }

    if (flags2 == false) {
      print("There is no Books in this name to  Update");
    }
  }

  void Search_books() {
    var unique_books = booksList.toSet().toList();
    String names1 = this.names;
    var x = false;
    stdout.write("Enter a query: ");
    names1 = stdin.readLineSync()!;
    RegExp exp = RegExp(names1.toLowerCase(), caseSensitive: false);
    print("Book name         Book author     rate");

    for (var i = 0; i < unique_books.length - 1; i++) {
      if (exp.hasMatch(unique_books[i]!.toLowerCase())) {
        print(
            "' ${unique_books[i]} '           ${authorsList[i]}         ${ratesList[i]}");
        x = true;
      }
    }

    if (x == false) {
      print("");
      print("");

      print("('''${names1}''') is not found");
      print("");
      print("");
    }
  }
}
