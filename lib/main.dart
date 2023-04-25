import 'package:app1302/member.dart';
import 'package:app1302/share.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => HomePageState();
}

class HomePageState extends State<MyHomePage> {
  var _icon = Icons.lock;
  var _text = 'กรุณาเข้าสู่ระบบ';

  @override
  Widget build(BuildContext context) {
    // var shareData = ShareData.of(context);

    Share.updateStatus = (value) {
      setState(() {
        Share.status = value;
        if (!value) {
          _icon = Icons.lock;
          _text = 'กรุณาเข้าสู่ระบบ';
        } else {
          _icon = Icons.check;
          _text = 'ท่านเข้าสู่ระบบ';
        }
      });
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              _icon,
              size: 64,
            ),
            Text(
              '$_text',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnMemberPage(),
          ],
        ),
      ),
    );
  }

  Widget btnMemberPage() => TextButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MemberPage(),
          ),
        ),
        child: Text(
          'ไปที่เพจสมาชิก >>',
          textScaleFactor: 1.5,
        ),
      );
}
