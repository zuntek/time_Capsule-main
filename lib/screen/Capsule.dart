import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:time_capsule/controller/PostController.dart';

class Capsule extends StatelessWidget {
  Capsule({super.key});
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
            // 화면 전체 박스
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: height * 0.02)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 5.0,
                            offset: Offset(0, 10), // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.01,
                              vertical: height * 0.01,
                            ),
                            child: SizedBox(
                              height: height * 0.3,
                              width: width * 0.9,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    width:
                                        width * 0.5, // 이미지의 너비를 화면 너비의 절반으로 설정
                                    height: height *
                                        0.15, // 이미지의 높이를 화면 높이의 40%로 설정
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("images/background.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Container(
                                    width:
                                        width * 0.5, // 이미지의 너비를 화면 너비의 절반으로 설정
                                    height: height *
                                        0.15, // 이미지의 높이를 화면 높이의 40%로 설정
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("images/background.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Container(
                                    width:
                                        width * 0.5, // 이미지의 너비를 화면 너비의 절반으로 설정
                                    height: height *
                                        0.15, // 이미지의 높이를 화면 높이의 40%로 설정
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("images/background.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'zzuntekk',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.04),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                '용인팟',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: width * 0.03),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                              ),
                              Text(
                                '서울시 강서구에서.', //위치값 받기
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: width * 0.03),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.005),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', //글 내용
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
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
                                    const Text('10'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
