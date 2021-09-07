import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:status_message_app/widgets/category_widget.dart';
import 'package:status_message_app/widgets/message.dart';
import 'package:status_message_app/widgets/share_button.dart';

class StatusMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Status Messages"),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Categories(),
              Divider(
                thickness: 1.8,
              ),
              MessageWidget(),
              Divider(
                thickness: 1.8,
              ),
              ShareButton(),
              Spacer()
            ],
          ),
        ));
  }
}
