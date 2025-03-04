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
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(child: buildBody(context)),
        ));
  }

  Widget buildBody(BuildContext context);
}
