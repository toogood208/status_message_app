import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:status_message_app/views/status_view_viewModel.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StatusMessageViewModel>.reactive(
        viewModelBuilder: () => StatusMessageViewModel(),
        builder: (context, model, child) => Center(
            child: Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14.5),
                ),
                child: FutureBuilder(
                  future: model.message,
                  builder: (context, snapshot) {
                    return Center(
                        child: Text(
                      "${snapshot.data}",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2,
                          fontSize: 16.7),
                    ));
                  },
                ))));
  }
}
