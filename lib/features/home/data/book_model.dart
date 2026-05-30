class BookModel {
  final num? id;
  final String? title;
  final String? author;
  final int? averageRating;
  final int? firstPublishYear;

  BookModel({
    required this.title,
    this.author,
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
  // factory BookModel.fromJson(Map<String, dynamic> json) {
  //   final volumeInfo = json['volumeInfo'];
  //   final saleInfo = json['saleInfo'];
  //   final listPriceMap = saleInfo['listPrice'];

  //   return BookModel(
  //     title: volumeInfo['title'],
  //     author: (volumeInfo['authors'][0]),
  //     subTitle: volumeInfo['subtitle'],
  //     listPrice: ListPrice(
  //       amount: listPriceMap?['amount'],
  //       currencyCode: listPriceMap?['currencyCode'],
  //     ),
  //     averageRating: (volumeInfo['averageRating']),
  //     pageCount: volumeInfo['pageCount'],
  //   );
  // }
}

// class ListPrice {
//   final String amount;
//   final String currencyCode;

//   ListPrice({required this.amount, required this.currencyCode});
// }

// class ImageLinks {
//   final String image;

//   ImageLinks({required this.image});
//   factory ImageLinks.fromJson(Map<String, dynamic> json) {
//     return ImageLinks(image: json['thumbnail']);
//   }
// }
