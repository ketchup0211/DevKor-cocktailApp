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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: goHome,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/fill_home.png',
                          scale: isClicked ? 1.9 : 1.8,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '홈',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: goHome,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/recipe.png',
                          scale: 1.8,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '레시피',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: goHome,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/zoom_in.png',
                          scale: 1.8,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '검색',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: goHome,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/person.png',
                          scale: 1.8,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '프로필',
                          style: TextStyle(
                            color: Colors.black,
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
              Flexible(
                flex: 1,
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.grey.withOpacity(0.75)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 38, right: 28),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 75,
                            ),
                            child: TextField(
                              readOnly: !search,
                              cursorColor: Colors.white.withOpacity(0.2),
                              cursorHeight: 22,
                              onTap: openSearch,
                              style: const TextStyle(
                                textBaseline: TextBaseline.alphabetic,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  left: 30,
                                ),
                                filled: search,
                                fillColor: Colors.black.withOpacity(
                                  0.15,
                                ),
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
