class KakaoModelUser {
  final String backgroundImage;
  final String name;
  final String intro;

  KakaoModelUser({
    required this.backgroundImage,
    required this.name,
    required this.intro
  });
}
 
const String _urlPrefix = 
    "https://picsum.photos/200";

KakaoModelUser kakaoMe = KakaoModelUser(
  backgroundImage: "$_urlPrefix?random=11",
  name: "김철수",
  intro: "고통없이는 얻는 것도 없다.",
);

List<KakaoModelUser> kakaoFriends = [
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=12",
    name: "홍길동",
    intro: "아버지라 불러도 되겠습니까",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=13",
    name: "정도전",
    intro: "앞이 보이겠습니까",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=14",
    name: "박태수",
    intro: "지금 어디에 와 있을까",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=15",
    name: "김상중",
    intro: "그런데 말입니다.",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=16",
    name: "김두한",
    intro: "4딸라",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=17",
    name: "심영",
    intro: "내가 고자라니",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=18",
    name: "교강용",
    intro: "더 이상의 자세한 설명은 생략한다.",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=19",
    name: "김환희",
    intro: "뭣이 중헌디",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=20",
    name: "뚱이",
    intro: "아뇨, 뚱인데요?",
  ),
  KakaoModelUser(
    backgroundImage: "$_urlPrefix?random=21",
    name: "김주원",
    intro: "이게 최선입니까 확실해요?",
  ),
];
