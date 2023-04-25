import 'package:app1302/share.dart';
import 'package:app1302/share_data.dart';
import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  bool _status = false;

  @override
  Widget build(BuildContext context) {
    _status = Share.status;

    return Scaffold(
      appBar: AppBar(
        title: Text('Member Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            btnLogin(context),
            SizedBox(
              height: 30,
            ),
            btnBack(context),
          ],
        ),
      ),
    );
  }

  Widget btnLogin(BuildContext context) => ElevatedButton(
        onPressed: () {
          setState(() {
            Share.updateStatus(!_status);
          });
        },
        child: Text(
          (!_status) ? 'เข้าสู่ระบบ' : 'ออกจากระบบ',
          textScaleFactor: 1.5,
        ),
      );

  Widget btnBack(BuildContext context) => ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          '<< กลับ',
          textScaleFactor: 1.5,
        ),
      );
}
