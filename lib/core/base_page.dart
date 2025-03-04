import 'package:flutter/material.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({super.key, required this.title});
  final String title;
  @override
  BasePageState createState();
}

abstract class BasePageState<T extends BasePage> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context);
}
