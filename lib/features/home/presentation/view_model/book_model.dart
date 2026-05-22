class BookModel {
  final String? image;
  final String? title;
  final String? author;
  final String? subTitle;
  // final ListPrice listPrice;
  final int? averageRating;
  final int? pageCount;

  BookModel({
    required this.title,
    required this.author,
    required this.subTitle,
    // required this.listPrice,
    required this.averageRating,
    required this.pageCount,
    required this.image,
  });
  factory BookModel.fromJson({required Map<String, dynamic> json}) {
    return BookModel(
      image: json['volumeInfo']['imageLinks']['thumbnail'],
      title: json['volumeInfo']['title'],
      subTitle: json['volumeInfo']['subTitle'],
      author: json['volumeInfo'][0],
      // listPrice: listPrice,
      averageRating: json['volumeInfo']['averageRating'],
      pageCount: json['volumeInfo']['pageCount'],
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
