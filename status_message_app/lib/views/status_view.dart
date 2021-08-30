import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:status_message_app/models/status_message_model.dart';
import 'package:status_message_app/network/status_message_network.dart';

class StatusMessages extends StatefulWidget {
  const StatusMessages({Key? key}) : super(key: key);

  @override
  _StatusMessagesState createState() => _StatusMessagesState();
}

class _StatusMessagesState extends State<StatusMessages> {
  static var _endpoint = "love";
  static var _hasBeenPressed = true;

  Future<StatusMessageModel> getMessage(String value) {
    setState(() {
      _endpoint = value;
    });
    return StatusMessageNetwork().getMessages(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status Messages"),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: FutureBuilder(
            future: getMessage(_endpoint),
            builder: (BuildContext context,
                AsyncSnapshot<StatusMessageModel> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Wrap(
                        spacing: 6,
                        direction: Axis.horizontal,
                        children: [
                          TextButton.icon(
                            label: Text(
                              "Quotes",
                            ),
                            icon: Icon(FontAwesomeIcons.book),
                            onPressed: () {
                              _endpoint = "quotes";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Funny",
                            ),
                            icon: Icon(FontAwesomeIcons.laugh),
                            onPressed: () {
                              _endpoint = "funny";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Love",
                            ),
                            icon: Icon(FontAwesomeIcons.heart),
                            onPressed: () {
                              _endpoint = "love";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Friendship",
                            ),
                            icon: Icon(FontAwesomeIcons.userFriends),
                            onPressed: () {
                              _endpoint = "friendship";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Birthday",
                            ),
                            icon: Icon(FontAwesomeIcons.birthdayCake),
                            onPressed: () {
                              _endpoint = "birthday";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Sad",
                            ),
                            icon: Icon(FontAwesomeIcons.sadCry),
                            onPressed: () {
                              _endpoint = "sad";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Sweet",
                            ),
                            icon: Icon(FontAwesomeIcons.cookieBite),
                            onPressed: () {
                              _endpoint = "sweet";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                          TextButton.icon(
                            label: Text(
                              "Random",
                            ),
                            icon: Icon(FontAwesomeIcons.random),
                            onPressed: () {
                              _endpoint = "random";
                              print(_endpoint);
                              getMessage(_endpoint);
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: _hasBeenPressed
                                    ? Colors.yellow.shade700
                                    : Colors.white,
                                onSurface: Colors.grey,
                                shadowColor: Colors.deepOrangeAccent,
                                elevation: 15,
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.8,
                    ),
                    Center(
                        child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(14.5),
                            ),
                            child: Center(
                                child: Text(
                              "${snapshot.data!.message}",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 2,
                                  fontSize: 16.7),
                            )))),
                    Divider(
                      thickness: 1.8,
                    ),
                    Container(
                        color: Colors.yellow.shade700,
                        margin: EdgeInsets.only(top: 18.0),
                        child: TextButton.icon(
                          onPressed: () {
                            Share.share("${snapshot.data!.message}");
                          },
                          icon: Icon(
                            Icons.share_rounded,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Share message",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.9),
                          ),
                        )),
                    Spacer()
                  ],
                );
              }
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }),
      ),
    );
  }
}
