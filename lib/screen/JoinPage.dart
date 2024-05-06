import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'CapInNet',
                  style: TextStyle(
                      fontFamily: 'Kalam',
                      fontSize: width * 0.075,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 53, 68, 80)),
                ),
                Text(
                  '회원가입을 환영합니다!',
                  style: TextStyle(
                      fontFamily: 'Kalam',
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5)),
                ),
                SizedBox(height: height * 0.05),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '이름',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: height * 0.05),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '이메일',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: height * 0.05),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: '비밀번호',
                    hintText: '영문,숫자,특수문자 조합으로 10자 이상',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  minLines: 1,
                ),
                SizedBox(height: height * 0.02),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: '비밀번호 확인',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: height * 0.05),
                _buildDateOfBirthField(),
                SizedBox(height: height * 0.05),
                _buildPhoneNumberField(),
                SizedBox(height: height * 0.05),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // 배경색 검은색
                  ),
                  onPressed: () {},
                  child: const Text('가입하기'),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

Widget _buildDateOfBirthField() {
  return InkWell(
    onTap: () {
      // Show date picker dialog
    },
    child: const InputDecorator(
      decoration: InputDecoration(
        labelText: '생년월일',
        border: OutlineInputBorder(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('YYYY-MM-DD'),
          Icon(Icons.calendar_today),
        ],
      ),
    ),
  );
}

Widget _buildPhoneNumberField() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: '연락처',
      border: OutlineInputBorder(),
      hintText: '010-1234-5678',
    ),
    keyboardType: TextInputType.phone,
  );
}
