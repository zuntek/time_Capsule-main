import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:time_capsule/controller/BottomButtonController.dart';
import 'package:time_capsule/controller/PostController.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});
  BottomButtonController bottomButtonController =
      Get.find<BottomButtonController>();
  PostController postController = Get.find<PostController>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    var textWidth = width * 0.05;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // SliverFillRemaining 나중에 이거 함 써봐도 좋을듯
              automaticallyImplyLeading: false,
              // expandedHeight: 200,
              toolbarHeight: height * 0.055,
              leadingWidth: width * 0.2,
              floating: true,
              // 스크롤 다시 올리면 appbar 보이게 하는거
              snap: true,
              // floating이 활성화 된 순간에 스크롤 멈추는 순간 appbar의 전부를 불러오도록 함.
              pinned: false,
              // 항상 appBar 표시. 기본값은 false인데 이 경우엔 스크롤 올릴떄만 가능.
              //surfaceTintColor:
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.white,
                  // color: const Color.fromARGB(255, 231, 228, 228),
                ),
              ),
              // flexibleSpace 이거 사용하면 스크롤 다시 올릴 때 appbar색 이상하지 않고 계속 하얀색임. 뭐 동적으로 움직일 때나, 가장 위로 스크롤 했을 때 스크롤 바 색 바꿔주려고
              //  사용한다는데, 일단은 flexibleSpace 안 썻을 때, 스크롤 색이 일반 배경 색이랑 안 맞고 약간 분홍색이라 색 지정하려고 해줬음.
              shape: const Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.5)),
              leading: Row(
                children: [
                  SizedBox(width: width * 0.03),
                  Text(
                    'MyPage',
                    style: TextStyle(
                      fontSize: width * 0.041,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              actions: [
                Icon(Icons.menu, size: width * 0.09),
                const Padding(padding: EdgeInsets.only(right: 10)),
                SizedBox(
                  height: height * 0.02,
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 0.3, color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shadowColor: const Color.fromARGB(255, 147, 167, 242),
                          elevation: 5,
                          clipBehavior: Clip.antiAlias,
                          shape: const CircleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 147, 167, 242))),
                          child: SizedBox(
                            width: width * 0.35,
                            height: height * 0.19,
                            /*child: const Image(
                              image: AssetImage('images/profile.png'),
                            ),*/
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(0.8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'zzuntekk',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '홍준택',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '#546123',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    )
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(),
              sliver: SliverToBoxAdapter(
                child: Container(
                  color: const Color.fromARGB(255, 189, 201, 247),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.list_bullet,
                            size: height * 0.05,
                          ),
                          const Text('게시글 관리'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.profile_circled,
                            size: height * 0.05,
                          ),
                          const Text('프로필 수정'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(width * 0.05),
              sliver: SliverToBoxAdapter(
                  child: Row(
                children: [
                  Text(
                    '총 0개의 소중한 추억',
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  )
                ],
              )),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 189, 201, 247),
                          border: Border.all(
                              width: 0.3,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20)),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.03,
                                vertical: height * 0.01),
                            child: SizedBox(
                              width: width * 0.6,
                              height: height * 0.2,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.0, color: Colors.white),
                                  borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(20),
                                      right: Radius.circular(20)),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "images/background.png"), // 배경 이미지 경로
                                    fit: BoxFit.cover, // 이미지가 컨테이너를 꽉 채우도록 설정
                                  ),
                                ),
                                /*child: Image.network(
                                  postController.postList[index].image ?? '',
                                  fit: BoxFit.cover,
                                ),*/
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /* Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1.5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2024.4.10의 소중한 추억.',
                                        style: TextStyle(
                                            fontSize: width * 0.015,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '서울시 강서구 화곡3동',
                                        style: TextStyle(
                                          fontSize: width * 0.015,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),*/
                                Text(
                                  '2024.4.10/서울시 강서구',
                                  style: TextStyle(
                                      fontSize: width * 0.025,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      CupertinoIcons.heart,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      CupertinoIcons.chat_bubble,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  childCount: postController.postList.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // 한 줄에 보일 내용의 수 - 필수값
                  crossAxisCount: 2,

                  // GridView Item 간의 세로 간격
                  crossAxisSpacing: 10,

                  // GridView Item 간의 가로 간격
                  mainAxisSpacing: 10,

                  // GridView Item 의 가로 길이
                  mainAxisExtent: 200,
                ))
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        // height: height * 0.075,
        // decoration: const BoxDecoration(
        //   border: Border(
        //     top: BorderSide(width: 0.5, color: Colors.grey),
        //   ),
        // ),
        child: Obx(
          () {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: width * 0.05,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.black,
              currentIndex: bottomButtonController.selectedIndex.value,
              selectedLabelStyle: const TextStyle(color: Colors.black),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group), label: 'Group'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on_outlined), label: 'Map'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.profile_circled),
                    label: 'MyPage'),
              ],
              onTap: (index) {
                bottomButtonController.onTap(index);
              } // 아 이 value(지금은 index) 값이 눌렀을 떄 index 제공해주는 값이네

              ,
            );
          },
        ),
      ),
    );
  }
}
