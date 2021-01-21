import 'package:flutter/material.dart';

// Có 2 cách để viết hàm main()
// void main(){
//   runApp(MyLogin());
// }

void main() => runApp(MyLogin());

//Tạo class MyLogin và đối tượng mới
class MyLogin extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp(); //Tạo đối tượng
}

//Định nghĩa class _MyApp
class _MyApp extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),//Căn chỉnh Nội dung (các phần tử) với viền
          constraints: BoxConstraints.expand(),//Định nghĩa rằng buộc về thuộc tính của cont và thường sẽ được sử dụng
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, //Thuộc tính này để căn chỉnh các phần tử con trong hàng hoặc cột (In this case: được căn chỉnh cho Column)
            crossAxisAlignment: CrossAxisAlignment.start,//Chức năng như mainAxisAlignment
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                   //image: AssetImage('graphics/background.png'),
                   // Image.asset('assets/images/1.png'),
                     //image: Image.asset('assets/images/lake.jpg'),
                    color: Color(0xffd8d8d8),
                  ),
                  child: FlutterLogo(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Text(
                  "Hello\nWelcome\tLogin",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    //Style cho text được nhập tronme
                    decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 15),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        //Style cho text được nhập tronme
                        obscureText: true,
                        //Mã hoá thành mật khẩu
                        decoration: InputDecoration(
                          labelText: "PASSWORD",
                          labelStyle:
                              TextStyle(color: Color(0xff888888), fontSize: 15),
                        )),
                    Text(
                      "SHOW",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: onSignInClicked,
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //Tạo khoảng cách giữa sign up và fog
                  children: <Widget>[
                    Text(
                      "NEW USER? SIGN UP",
                      style: TextStyle(color: Color(0xff888888), fontSize: 15),
                    ),
                    Text(
                      "FORGOT PASSWORD",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Xử lý hành động của người dùng
  void onSignInClicked() {}
}
