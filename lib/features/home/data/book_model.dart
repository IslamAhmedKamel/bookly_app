class BookModel {
  final num id;
  final String? title;
  final String? author;
  final int? averageRating;
  final int? firstPublishYear;

  BookModel({
    required this.title,
    required this.author,
    required this.averageRating,
    required this.firstPublishYear,
    required this.id,
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
