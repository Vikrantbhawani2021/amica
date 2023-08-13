import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../Utils/Constants/constants_colors.dart';
import '../../../Utils/Wdgets/appbar.dart';

class ViewConverSations extends StatefulWidget {

  const ViewConverSations({Key? key, }) : super(key: key);

  @override
  State<ViewConverSations> createState() => _ViewConverSationsState();
}

class _ViewConverSationsState extends State<ViewConverSations> {

  final TextEditingController _messageController = TextEditingController();
  bool isLoading = false;
  @override
  void initState() {
    super.initState();

  }


  bool isSending = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Conversations',
        backgroundColor: ColorConst.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {

                      return Row(

                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 10,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(

                              children: [

                                  Text(
                                     "Team",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                Container(
                                  padding:   EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "conversation.message!",
                                    style: TextStyle(
                                      color:   Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),

                                  Text(
                                      "Team",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
          ),

            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type your message',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 20,
                            top: 10,
                            bottom: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorConst.primaryColor,
                    child: IconButton(
                      icon: isSending
                          ? const CupertinoActivityIndicator()
                          : const Icon(
                              FontAwesome.send_o,
                              color: Colors.white,
                            ),
                      onPressed: () {
                        if (isSending) return;
                        if (_messageController.text.isNotEmpty) {

                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )

         
        ],
      ),
    );
  }
}
