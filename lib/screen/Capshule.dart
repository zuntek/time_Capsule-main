import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:time_capsule/controller/PostController.dart';

class Capshule extends StatelessWidget {
  Capshule({super.key});
  PostController postController = Get.find<PostController>();

//cid, pid 받아서 작동하는부분 작성

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.065,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              CupertinoIcons.xmark,
              size: width * 0.075,
              color: Colors.black54,
            )),
        actions: [
          Transform.translate(
            offset: Offset(0, height * 0.0016),
            child: Icon(
              CupertinoIcons.photo,
              size: width * 0.09,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 10),
            child: SizedBox(
              width: width * 0.135,
              height: height * 0.038,
              child: TextButton(
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
                    '수정하기',
                    style: TextStyle(
                        fontSize: width * 0.0353, fontWeight: FontWeight.w500),
                  )),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.black),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Card(
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
                      Text(
                        'zzuntekk님의 게시글',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.05),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                      ),
                      Text(
                        '서울시 강서구에서.', //위치값 받기
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03, vertical: height * 0.005),
                    child: SizedBox(
                      height: width * 0.4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("images/background.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Container(
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("images/background.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Container(
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("images/background.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Text(
                        '오늘 여자헌팅 조져보겠습니다 ㅎㅎ 힘을 주세요', //글 내용
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 13),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 2.5),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.heart,
                              size: width * 0.065,
                            ),
                            const Text('12'),
                          ],
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 12)),
                      Transform.translate(
                        offset: const Offset(0, 1.1),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.chat_bubble,
                              size: width * 0.062,
                            ),
                            const Text('8'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
