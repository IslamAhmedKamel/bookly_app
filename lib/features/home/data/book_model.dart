class BookModel {
  final num? id;
  final String? title;
  final String? author;
  final int? averageRating;
  final int? firstPublishYear;

  BookModel({
    this.title,
    this.author,
    this.averageRating,
    this.firstPublishYear,
    this.id,
  });
  factory BookModel.fromJson({required Map<String, dynamic> json}) {
    return BookModel(
      id: json['cover_i'],
      title: json["title"],
      author: (json['author_name'][0]),
      // listPrice: listPrice,
      averageRating: json["edition_count"],
      firstPublishYear: json["first_publish_year"],
    );
  }
}
