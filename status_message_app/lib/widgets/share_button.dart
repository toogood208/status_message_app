import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:status_message_app/views/status_view_viewModel.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StatusMessageViewModel>.nonReactive(
        viewModelBuilder: () => StatusMessageViewModel(),
        builder: (context, model, child) => Container(
            color: Colors.yellow.shade700,
            margin: EdgeInsets.only(top: 18.0),
            child: TextButton.icon(
              onPressed: () {
                Share.share("${model.getMessage}");
              },
              icon: Icon(
                Icons.share_rounded,
                color: Colors.white,
              ),
              label: Text(
                "Share message",
                style: TextStyle(color: Colors.white, fontSize: 18.9),
              ),
            )));
  }
}
