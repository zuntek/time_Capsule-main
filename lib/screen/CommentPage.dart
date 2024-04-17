import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:time_capsule/controller/PostController.dart';
import 'package:time_capsule/controller/BottomButtonController.dart';

class CommentPage extends StatelessWidget {
  CommentPage({super.key});
  BottomButtonController bottomButtonController =
      Get.find<BottomButtonController>();
  PostController postController = Get.find<PostController>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
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
              floating: false,
              // 스크롤 다시 올리면 appbar 보이게 하는거
              snap: false,
              // floating이 활성화 된 순간에 스크롤 멈추는 순간 appbar의 전부를 불러오도록 함.
              pinned: true,
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
                    'CapInNet',
                    style: TextStyle(
                        fontFamily: 'Kalam',
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 53, 68, 80)),
                  ),
                ],
              ),
              actions: [
                Icon(Icons.search, size: width * 0.083),
                const Padding(padding: EdgeInsets.only(right: 8)),
                Icon(Icons.menu, size: width * 0.09),
                const Padding(padding: EdgeInsets.only(right: 10)),
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: height * 0.03),
              sliver: SliverToBoxAdapter(
                  child: Column(
                children: [
                  Text(
                    '댓글',
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  )
                ],
              )),
            ),
            SliverPadding(
              padding: EdgeInsets.all(width * 0.05),
              sliver: SliverToBoxAdapter(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.0, color: Colors.black),
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(20), right: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'zzuntekk의 댓글',
                      style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Card(
                                shadowColor:
                                    const Color.fromARGB(255, 147, 167, 242),
                                elevation: 3,
                                clipBehavior: Clip.antiAlias,
                                shape: const CircleBorder(
                                    side: BorderSide(
                                  width: 1,
                                )),
                                child: SizedBox(
                                  width: width * 0.1,
                                  height: height * 0.1,
                                  child: const Image(
                                    image: AssetImage('images/profile.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),

                              /* Text(
                                          'zzuntekk',
                                          style: TextStyle(
                                            fontSize: width * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),*/
                              Text(
                                '사랑해요',
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.heart,
                                  ),
                                  Text('20')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              sliver: SliverToBoxAdapter(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.0, color: Colors.black),
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(20), right: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'insu_1004의 댓글',
                      style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Card(
                                shadowColor:
                                    const Color.fromARGB(255, 147, 167, 242),
                                elevation: 3,
                                clipBehavior: Clip.antiAlias,
                                shape: const CircleBorder(
                                    side: BorderSide(
                                  width: 1,
                                )),
                                child: SizedBox(
                                  width: width * 0.1,
                                  height: height * 0.1,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                '정말 멋있는 사진... 배우고 갑니다...',
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.heart,
                                  ),
                                  Text('8')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: const TextField(
          decoration: InputDecoration(
            hintText: "댓글을 입력하세요...",
            border: OutlineInputBorder(),
          ),
          maxLength: 300,
          maxLines: 3,
        ),
        /*TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(40),
                      right: Radius.circular(40),
                    ))),
                onPressed: () {
                  postController.sendData();
                  Get.back();
                },
                child: Text(
                  '완료',
                  style: TextStyle(
                      fontSize: width * 0.0353, fontWeight: FontWeight.w500),
                )),*/
      ),
    );
  }
}
