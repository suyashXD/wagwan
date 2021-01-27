import 'package:flutter/material.dart';
import 'package:wagwan/resources/firebase_repository.dart';
import 'package:wagwan/utils/universal_variables.dart';
import 'package:wagwan/widgets/appbar.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

final FirebaseRepository _repository = FirebaseRepository();

class _ChatListScreenState extends State<ChatListScreen> {
  String currentUserID;

  @override
  void initState() {
    super.initState();
    _repository.getCurrentUser().then((user) {
      setState(() {
         currentUserID = user.uid;     
      });      
    });
  }
  CustomAppBar customAppBar(BuildContext context){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UniversalVariables.blackColor,
      appBar: customAppBar(context),
    );
  }
}
