class CarrotMarketProduct {
  String  title;
  String  author;
  String  address;
  String  urlToImage;
  String  publishedAt;
  String  price;
  int     heartCount;
  int     commentsCount;

  CarrotMarketProduct({
    required this.title,
    required this.author,
    required this.address,
    required this.urlToImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentsCount,
  });

}

List<CarrotMarketProduct> carrotMarketProductList = [
  CarrotMarketProduct(
      title: '니트 조끼',
      author: 'author_1',
      urlToImage:
          "https://picsum.photos/200?random=1",
      publishedAt: '2시간 전',
      heartCount: 8,
      price: '35000',
      address: '좌동',
      commentsCount: 3),
  CarrotMarketProduct(
      title: '먼나라 이웃나라 12',
      author: 'author_2',
      urlToImage:
          "https://picsum.photos/200?random=2",
      publishedAt: '3시간 전',
      heartCount: 3,
      address: '중동',
      price: '18000',
      commentsCount: 1),
  CarrotMarketProduct(
    title: '캐나다구스 패딩조',
    author: 'author_3',
    address: '우동',
    urlToImage:
        "https://picsum.photos/200?random=3",
    publishedAt: '1일 전',
    heartCount: 0,
    price: '15000',
    commentsCount: 12,
  ),
  CarrotMarketProduct(
    title: '유럽 여행',
    author: 'author_4',
    address: '우동',
    urlToImage:
        "https://picsum.photos/200?random=4",
    publishedAt: '3일 전',
    heartCount: 4,
    price: '15000',
    commentsCount: 11,
  ),
  CarrotMarketProduct(
    title: '가죽 파우치 ',
    author: 'author_5',
    address: '우동',
    urlToImage:
        "https://picsum.photos/200?random=5",
    publishedAt: '1주일 전',
    heartCount: 7,
    price: '95000',
    commentsCount: 4,
  ),
  CarrotMarketProduct(
    title: '노트북',
    author: 'author_6',
    address: '좌동',
    urlToImage:
        "https://picsum.photos/200?random=6",
    publishedAt: '5일 전',
    heartCount: 4,
    price: '115000',
    commentsCount: 0,
  ),
  CarrotMarketProduct(
    title: '미개봉 아이패드',
    author: 'author_7',
    address: '좌동',
    urlToImage:
        "https://picsum.photos/200?random=7",
    publishedAt: '5일 전',
    heartCount: 8,
    price: '85000',
    commentsCount: 3,
  ),
];
