import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practise_project/whatsap%20ui%20making/chat.dart';

void main() {
  runApp(MaterialApp(
    home: TabEx(),
  ));
}

class TabEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),
            actions: [
              Icon(Icons.search),
              Icon(Icons.camera_alt),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('New Group')),
                  PopupMenuItem(child: Text('New Broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Stared messages')),
                  PopupMenuItem(child: Text('Payment')),
                  PopupMenuItem(child: Text('Settings'))
                ];
              })
            ],
            bottom: TabBar(
              //indicatorSizetabs: TabBarIndicatorSize.label,
                isScrollable: true,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .1,
                      child: Center(child: FaIcon(FontAwesomeIcons.peopleGroup))),
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .3,
                      child: Center(child: Text('Chat'))),
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .3,
                      child: Center(child: Text('Status'))),
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .3,
                      child: Center(child: Text('Calls'))),
                ]),
          ),
          body: TabBarView(
            children: [
              
              ChatScreen(),
            ],
          ),
        ));
  }
}