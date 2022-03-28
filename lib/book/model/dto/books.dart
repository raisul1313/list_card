class Book {
  int? id;
  String? bookName;
  String? bookAuthor;
  String? bookDescription;
  String? imageUrl;

  Book(
      {this.id,
      this.bookName,
      this.bookAuthor,
      this.bookDescription,
      this.imageUrl});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookName = json['book_name'];
    bookAuthor = json['book_author'];
    bookDescription = json['book_description'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['book_name'] = this.bookName;
    data['book_author'] = this.bookAuthor;
    data['book_description'] = this.bookDescription;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
