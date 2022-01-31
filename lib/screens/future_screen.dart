// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FutureScreen extends StatelessWidget {
  final String title;
  const FutureScreen({Key? key, required this.title}) : super(key: key);
  Future<void> getData() async {
    try {//async-await a try-catch use kora joruri//
      var userid = await Future.delayed(const Duration(seconds: 3), () {
        return 'User Id : F1';
      });
      print('Hey Flutter Developer $userid');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              //bcoz ati akti function //
              await getData(); //await namae holo ami agae porae shob//
              print('(async-await) na thaklae ami agae print hobo');
            },
            child: const Text('ClickMe')),
      ),
    );
  }
}
