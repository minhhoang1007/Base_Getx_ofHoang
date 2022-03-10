import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            _viewAccount(),
          ],
        )),
      ),
    );
  }

  Widget _viewAccount() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.amberAccent,
      ),
    );
  }
}
