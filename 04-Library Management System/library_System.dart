class Book{
  String title='';
  String author='';
  bool isAvailable=false;
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }
  
  bool isAvailable(String title) {
    for (var book in books) {
      if (book.title == title) {
        return book.isAvailable;
      }
    }
    return false;
  }

  String searchBook(String title) {
    for (var book in books) {
      if (book.title == title && book.isAvailable) {
        return "Book found: ${book.title} by ${book.author}";
      }
    }
    return "Book not found";
  }


}

void main(){
  Library library = Library();
  Book book1=Book();

  //creating a book instance
  book1.title='Dart Programming';
  book1.author='Ubaid Ahmad Gull';
  book1.isAvailable=true;
  
  // creatin another book instance
  Book book2=Book();
  book2.title='Flutter Development';
  book2.author='Bakhti GUll';
  book2.isAvailable=true;

  //books to library
  library.addBook(book1);
  library.addBook(book2);

  //searching book by book title
  print(library.searchBook("Dart Programming")); //will return book if found
  print(library.isAvailable("Dart Programming")); //will true if ffound otherwise false
}