import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:haraj_app/modules/chat/widget/message_card.dart';
import 'package:haraj_app/modules/chat/widget/no_data_widget.dart';
import 'package:haraj_app/shared/components/custom_text.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custome_image.dart';
import 'data/my_data.dart';
import 'data/time_date_send.dart';
import 'firebase/fb_firestore_chats_controller.dart';
import 'firebase/fb_firestore_messages_controller.dart';
import 'firebase/fb_firestore_users_controller.dart';
import 'get/controllers/app/chat_screen_controller.dart';
import 'model/chat.dart';
import 'model/chat_message.dart';
import 'model/chat_user.dart';
import 'package:stream_transform/stream_transform.dart';

class CustomChatScreen extends StatefulWidget {
  const CustomChatScreen({Key? key, required this.chat, required this.peer}) : super(key: key);
  final Chat chat;
  final ChatUser peer;
  @override
  State<CustomChatScreen> createState() => _CustomChatScreenState();
}

class _CustomChatScreenState extends State<CustomChatScreen> with WidgetsBindingObserver{
  String adType = 'chat';
  List items = ['', '', ''];
  String acceptChat = 'wait';

  StreamController<String> streamController = StreamController();
  final TextEditingController messageController = TextEditingController();
  late String myPeer;
  final controller = Get.put<ChatScreenController>(ChatScreenController());
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    streamController.stream
        .debounce(const Duration(milliseconds: 500))
        .listen((s) {
      _updateMyTypingStatus(false);
    });
    myPeer = getMyPeerTyping(widget.chat.createdBy);
  }

  @override
  void dispose() {
    messageController.dispose;
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (state == AppLifecycleState.resumed && !controller.isSent.value) {
      _deleteMessage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.chat.lastMessageText.isEmpty) {
          FbFireStoreChatsController().deleteChat(widget.chat.id);
        } else if (!controller.isSent.value &&
            controller.messageId.isNotEmpty) {
          FbFireStoreMessagesController()
              .deleteMessage(controller.messageId.value);
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 330),
          child: Stack(
            children: [
              CustomSvgImage(
                imageName: AssetsImage.liner_bg,
                width: MediaQuery.sizeOf(context).width,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45, right: 16, left: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 16,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: widget.peer.name,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 5),
                        StreamBuilder(
                          stream: FbFireStoreChatsController().fetchChat(widget.chat.id),
                          builder: (context, snapshot) {
                            if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
                              Chat chat = snapshot.data!.docs.first.data();
                              return StreamBuilder<QuerySnapshot<ChatUser>>(
                                  stream: FbFireStoreUsersController()
                                      .readPeerData(chat.getPeerId()),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData &&
                                        snapshot.data!.docs.isNotEmpty) {
                                      return ((myPeer == 'is_peer1_typing')
                                          ? chat.isPeer2Typing
                                          : chat.isPeer1Typing)
                                          ? Text(
                                        'typing ...',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColor.grey,
                                        ),
                                      )
                                          : snapshot.data!.docs.first.data().online
                                          ? Text(
                                        'online',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: AppColor.green,
                                        ),
                                      )
                                          : Text(
                                        'offline',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: AppColor.grey,
                                        ),
                                      );
                                    } else {
                                      return const Text('');
                                    }
                                  });
                            } else {
                              return const Text('');
                            }
                          },
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'مرحبا',
                        color: AppColor.online,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      CustomSvgImage(
                        imageName: AssetsImage.hello,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomText(
                    text:
                        'مرحبا بك، هنا بداية المحادثة الخاصة بالاعلان رقم E5656،والذي نشر بتاريخ 2/5/2023. ',
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                          color: AppColor.containerBorderColor, width: .5),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/1164778/pexels-photo-1164778.jpeg?cs=srgb&dl=pexels-christian-1164778.jpg&fm=jpg',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: 'توسان اكسنت',
                                fontSize: 12,
                                color: AppColor.darkGreyColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'الحالة :',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      color: AppColor.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'ممتاز',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.grey,
                                          fontSize: 12,
                                          fontFamily: 'Avenir',
                                        ),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: '500000 درهم',
                                    fontSize: 12,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    text: '8:30 ص',
                                    fontSize: 10,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: StreamBuilder<QuerySnapshot<ChatMessage>>(
                      stream: FbFireStoreMessagesController()
                          .fetchChatMessages(widget.chat.id),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasData &&
                            snapshot.data!.docs.isNotEmpty) {
                          return GroupedListView<QueryDocumentSnapshot<ChatMessage>,
                              String>(
                            keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                            reverse: true,
                            order: GroupedListOrder.DESC,
                            elements: snapshot.data!.docs,
                            sort: false,
                            groupSeparatorBuilder: (value) =>
                                Center(child: Text(value)),
                            groupBy: (element) =>
                                dateSend(int.parse(element.data().sentAt)),
                            padding: EdgeInsets.symmetric(vertical: 30),
                            itemBuilder: (context, element) {
                              return Padding(
                                padding: EdgeInsetsDirectional.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: element.data().sentByMe
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible: !element.data().sentByMe,
                                      child: Padding(
                                        padding:
                                        EdgeInsetsDirectional.only(end: 20),
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor: AppColor.white,
                                          backgroundImage: widget
                                              .peer.image?.isNotEmpty ??
                                              false
                                              ? NetworkImage(widget.peer.image!)
                                              : const AssetImage(
                                              'assets/images/person.png')
                                          as ImageProvider,
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible: !(!element.data().isSent &&
                                          element.data().sentByMe),
                                      child: MessageCard(
                                        isSent: element.data().isSent,
                                        isMe: element.data().sentByMe,
                                        message: element.data().message,
                                        date: element.data().sentAt,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        } else {
                          return const NoDataWidget(
                            message: 'NO MESSAGES',
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColor.containerBorderColor,
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              fillColor: Colors.white,
                              labelText: 'اكتب الرسالة ..',
                              labelStyle: TextStyle(
                                color: AppColor.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.containerBorderColor),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.containerBorderColor),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.containerBorderColor),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.containerBorderColor),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: AppColor.containerBorderColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
  bool _checkData() {
    return messageController.text.trim().isNotEmpty;
  }

  Future<void> _performSendMessage() async {
    if (_checkData()) {
      final response =
      await FbFireStoreMessagesController().sendMessage(message);
      if (response.success) {
        widget.chat.lastMessageText = messageController.text.trim();
        controller.messageId.value = response.id;
        controller.isSent.value = false;
        await _updateMyTypingStatus(false);
      }
    }
  }

  Future<void> _updateMessage() async {
    ChatMessage chatMessage = message;
    chatMessage.id = controller.messageId.value;
    chatMessage.message = messageController.text;
    await FbFireStoreMessagesController().updateMessage(chatMessage);
  }

  Future<void> _deleteMessage() async {
    if (controller.messageId.isNotEmpty) {
      await FbFireStoreMessagesController()
          .deleteMessage(controller.messageId.value);
      controller.messageId('');
      controller.isSent(false);
      messageController.clear();
    }
  }

  Future<void> _sendFinalMessage() async {
    controller.messageContent(messageController.text);
    messageController.clear();
    ChatMessage chatMessage = message;
    chatMessage.id = controller.messageId.value;
    chatMessage.message = controller.messageContent.value;
    chatMessage.isSent = controller.isSent.value = true;
    chatMessage.sentAt = DateTime.now().millisecondsSinceEpoch.toString();
    controller.messageId.value = '';
    await FbFireStoreMessagesController().updateMessage(chatMessage);
    await FbFireStoreMessagesController().updateLastMessage(
      lastMessageText: chatMessage.message,
      lastMessageTime: DateTime.now().millisecondsSinceEpoch.toString(),
      chatId: widget.chat.id,
    );

  }

  Future<void> _updateMyTypingStatus(bool isTyping) async {
    await FbFireStoreChatsController().updateMyTypingStatus(
        isTyping: isTyping, chatId: widget.chat.id, myPeer: myPeer);
  }

  ChatMessage get message {
    ChatMessage message = ChatMessage();
    message.chatId = widget.chat.id;
    message.message = messageController.text.trim();
    message.senderId = myID;
    message.sentByMe = true;
    message.receiverId = widget.chat.getPeerId();
    message.sentAt = DateTime.now().millisecondsSinceEpoch.toString();
    return message;
  }
}


