import 'package:dagligvare/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextBody extends StatefulWidget {

  const TextBody({Key key, this.text}) : super(key: key);

  final String text;

  @override
  _TextBodyState createState() => _TextBodyState();
}

class _TextBodyState extends State<TextBody> {

  @override
  Widget build(BuildContext context) {

    return Text(
        widget.text,
        style: TextStyle(
            color: AppTheme.of(context).textColor,
            fontSize: 32
        )
    );
  }
}

