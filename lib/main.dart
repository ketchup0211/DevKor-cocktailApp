import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool search = false;
  bool isClicked = false;

  void openSearch() {
    setState(() {
      search = true;
    });
  }

  void closeSearch() {
    setState(() {
      search = false;
    });
  }

  void goHome() {
    print("go home");
    setState(() {
      isClicked = !isClicked;
    });
  }

  void goMenu(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MenuPage()),
    );
  }

  void goAI() {
    print("go AI");
    setState(() {
      isClicked = !isClicked;
    });
  }

  void gocard() {
    print("go AI");
    setState(() {
      isClicked = !isClicked;
    });
  }

  void gomy() {
    print("go AI");
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF202020),
          height: 87,
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: goHome,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF202020)),
                      shadowColor: MaterialStatePropertyAll(Color(0xFF202020)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/fill_home.png',
                        ),
                        const Text(
                          'home',
                          style: TextStyle(
                            fontFamily: 'Pretendard', // 원하는 폰트로 변경
                            fontSize: 12, // 폰트 크기를 12픽셀로 변경
                            fontWeight: FontWeight.w400, // 폰트의 굵기를 400으로 변경
                            height: 22 / 12, // 줄간격을 픽셀 크기에 맞게 조정
                            letterSpacing: 0, // 글자 간격을 0으로 설정
                            color: Color(0xFFFFFFFF), // 텍스트 색상을 흰색으로 변경
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Builder(
                  builder: (newContext) => Flexible(
                    // 새로운 context를 사용하여 goMenu 호출
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () => goMenu(newContext),
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF202020)),
                        shadowColor:
                            MaterialStatePropertyAll(Color(0xFF202020)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/shape.png',
                          ),
                          const Text(
                            'menu',
                            style: TextStyle(
                              fontFamily: 'Pretendard', // 원하는 폰트로 변경
                              fontSize: 12, // 폰트 크기를 12픽셀로 변경
                              fontWeight: FontWeight.w400, // 폰트의 굵기를 400으로 변경
                              letterSpacing: 0, // 글자 간격을 0으로 설정
                              color: Color(0xFFFFFFFF), // 텍스트 색상을 흰색으로 변경
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: goAI,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF202020)),
                      shadowColor: MaterialStatePropertyAll(Color(0xFF202020)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/AI.png',
                        ),
                        const Text(
                          'AI',
                          style: TextStyle(
                            fontFamily: 'Pretendard', // 원하는 폰트로 변경
                            fontSize: 12, // 폰트 크기를 12픽셀로 변경
                            fontWeight: FontWeight.w400, // 폰트의 굵기를 400으로 변경
                            height: 22 / 12, // 줄간격을 픽셀 크기에 맞게 조정
                            letterSpacing: 0, // 글자 간격을 0으로 설정
                            color: Color(0xFFFFFFFF), // 텍스트 색상을 흰색으로 변경
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: gocard,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF202020)),
                      shadowColor: MaterialStatePropertyAll(Color(0xFF202020)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Union.png',
                        ),
                        const Text(
                          'card',
                          style: TextStyle(
                            fontFamily: 'Pretendard', // 원하는 폰트로 변경
                            fontSize: 12, // 폰트 크기를 12픽셀로 변경
                            fontWeight: FontWeight.w400, // 폰트의 굵기를 400으로 변경
                            height: 22 / 12, // 줄간격을 픽셀 크기에 맞게 조정
                            letterSpacing: 0, // 글자 간격을 0으로 설정
                            color: Color(0xFFFFFFFF), // 텍스트 색상을 흰색으로 변경
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: gomy,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF202020)),
                      shadowColor: MaterialStatePropertyAll(Color(0xFF202020)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/my.png',
                        ),
                        const Text(
                          'my',
                          style: TextStyle(
                            fontFamily: 'Pretendard', // 원하는 폰트로 변경
                            fontSize: 12, // 폰트 크기를 12픽셀로 변경
                            fontWeight: FontWeight.w400, // 폰트의 굵기를 400으로 변경
                            height: 22 / 12, // 줄간격을 픽셀 크기에 맞게 조정
                            letterSpacing: 0, // 글자 간격을 0으로 설정
                            color: Color(0xFFFFFFFF), // 텍스트 색상을 흰색으로 변경
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: GestureDetector(
          onTap: closeSearch,
          child: Column(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Column 내 요소들을 시작 부분에서 정렬
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back,
                                color: Colors.black, size: 28.0),
                            onPressed: () {
                              print("back button tapped!");
                            },
                          ),
                          Text(
                            "MENU",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                            icon: Icon(Icons.search,
                                color: Colors.black, size: 28.0),
                            onPressed: () {
                              print("Search button tapped!");
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 30), // 버튼 사이의 간격을 위한 공간
                      // TextButton들을 Row로 묶기
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                // 첫 번째 텍스트 버튼의 기능
                                print("First button tapped!");
                              },
                              child: Text(
                                "전체 메뉴",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17, // 텍스트 사이즈 설정
                                  fontWeight: FontWeight.w600, // 텍스트 굵기 설정
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // 두 번째 텍스트 버튼의 기능
                                print("Second button tapped!");
                              },
                              child: Text(
                                "나만의 메뉴",
                                style: TextStyle(
                                  color: Color(0xFFBBBBBB),
                                  fontSize: 17, // 텍스트 사이즈 설정
                                  fontWeight: FontWeight.w600, // 텍스트 굵기 설정
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  height: 3,
                  decoration: const BoxDecoration(
                    color: Color(0xFFC7C7C7),
                  )),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '대체 재료로 만드는 간단 레시피',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('재료가 하나쯤 없어도 괜찮아요'),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ItemPreview(
                                  mainText: '깻잎으로 만든 모히또',
                                  hashtag: '럼 베이스',
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                ItemPreview(
                                  mainText: '깻잎으로 만든 모히또',
                                  hashtag: '럼 베이스',
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                ItemPreview(
                                  mainText: '깻잎으로 만든 모히또',
                                  hashtag: '럼 베이스',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          Text(
                            '이번주 인기 레시피',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('유저들이 가장 많이 저장한 레시피를 소개합니다.'),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ItemPreview(
                                  mainText: '깻잎으로 만든 모히또',
                                  hashtag: '럼 베이스',
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                ItemPreview(
                                  mainText: '깻잎으로 만든 모히또',
                                  hashtag: '럼 베이스',
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                ItemPreview(
                                  mainText: '깻잎으로 만든 모히또',
                                  hashtag: '럼 베이스',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
      ),
      body: Center(
        child: Text('This is the Menu Page'),
      ),
    );
  }
}

class ItemPreview extends StatelessWidget {
  final String mainText, hashtag;

  const ItemPreview({
    super.key,
    required this.mainText,
    required this.hashtag,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
            Positioned(
              right: 12,
              bottom: 15,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/favorite.png',
                    scale: 2,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('100'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          mainText,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text('# $hashtag'),
      ],
    );
  }
}
