// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:dagligvare/app_theme.dart';
import 'package:dagligvare/text_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppTheme()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: TextBody(text: "YOlomamama",),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<AppTheme>().toggleTheme(),
        child: const Icon(Icons.toggle_off),
      ),
    );
  }
}