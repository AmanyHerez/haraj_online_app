import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:haraj_app/modules/chat/routes/routes_manager.dart';
import 'package:haraj_app/modules/chat/widget/shimmer/chat_shimmer.dart';
import 'package:haraj_app/shared/components/custom_cached_network_image.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_text.dart';

import '../../route/routes.dart';
import '../../shared/assets_manager.dart';
import '../../shared/components/custom_textformfiled.dart';
import '../../shared/components/custome_image.dart';
import '../../shared/style/color_manager.dart';
import '../../shared/widget/row_divider_widget.dart';
import 'custom_chat_screen.dart';
import 'data/my_data.dart';
import 'data/time_date_send.dart';
import 'firebase/fb_firestore_chats_controller.dart';
import 'firebase/fb_firestore_users_controller.dart';
import 'model/chat.dart';
import 'model/chat_user.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String adType = 'chat';

  List items = ['', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: StreamBuilder<QuerySnapshot<Chat>>(
        stream:
        FbFireStoreChatsController().fetchChats(ChatStatus.accepted.name),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CustomSvgImage(
                        imageName: AssetsImage.tabBarbackground,
                        width: MediaQuery
                            .sizeOf(context)
                            .width,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Center(
                            child: CustomText(
                              text: 'الدردشة',
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        CustomTextFomField(
                          title: 'ابحث عن المحادثة',
                          fillColor: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          iconNamePuffix: AssetsImage.searchIcon,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: .5,
                          ),
                          radius: 10,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        RowDividerWidget(text: '030 دردشة'),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          margin: EdgeInsets.symmetric(vertical: 18),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.lightGrey,
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ListView.separated(
                            itemCount: snapshot.data!.docs.length,
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: AppColor.containerBorderColor,
                                height: 40,
                                thickness: 1,
                                indent: 10,
                                endIndent: 10,
                              );
                            },
                            itemBuilder: (context, index) {
                              Chat chatData = snapshot.data!.docs[index].data();
                              String peerId = chatData.getPeerId();
                              final String myPeer =
                              getMyPeerTyping(chatData.createdBy);
                              return StreamBuilder<QuerySnapshot<ChatUser>>(
                                  stream: FbFireStoreUsersController()
                                      .readPeerData(peerId),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData &&
                                        snapshot.data!.docs.isNotEmpty) {
                                      final peer =
                                      snapshot.data!.docs.first.data();
                                      return Dismissible(
                                        key: Key('item ${items[index]}'),
                                        background: Container(
                                          color: Color(0xFFECD6D8),
                                          child: Icon(Icons.delete,
                                              color: AppColor.primary),
                                        ),
                                        onDismissed:
                                            (DismissDirection direction) {
                                          if (direction ==
                                              DismissDirection
                                                  .startToEnd) {} else {}

                                          setState(() {
                                            items.removeAt(index);
                                          });
                                        },
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(() => CustomChatScreen(
                                                chat: chatData, peer: peer));

                                        // Navigator.pushNamed(
                                        //     context, AppRoutes.CHAT_DEDAILS);
                                          },
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    width: 50,
                                                    height: 50,
                                                    clipBehavior: Clip
                                                        .antiAlias,
                                                    decoration: BoxDecoration(
                                                      color: AppColor.primary,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child:
                                                    CustomCachedNetworkImage(
                                                      imageUrl:
                                                      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: 0,
                                                    left: 0,
                                                    top: 29,
                                                    child: Container(
                                                      padding: EdgeInsets.all(
                                                          1),
                                                      width: 12,
                                                      height: 12,
                                                      clipBehavior:
                                                      Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        color: AppColor.white,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Container(
                                                        width: 10,
                                                        height: 10,
                                                        clipBehavior:
                                                        Clip.antiAlias,
                                                        decoration: BoxDecoration(
                                                          color:peer.online? AppColor
                                                              .online:AppColor.grey,
                                                          shape: BoxShape
                                                              .circle,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                  Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                  .spaceBetween,
                                                  children: [
                                                    CustomText(
                                                      text: peer.name,
                                                    ),
                                                    CustomText(
                                                      text: timeSend(int
                                                          .tryParse(chatData
                                                          .lastMessageTime) ??
                                                          0),
                                                        fontWeight:
                                                        FontWeight.w300,
                                                        fontSize: 10,
                                                        color: AppColor.grey,
                                                      ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        CustomText(
                                                          text:
                                                          chatData.lastMessageText,
                                                          fontSize: 12,
                                                          color: AppColor.grey4,
                                                        ),
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration:
                                                          BoxDecoration(
                                                            color:
                                                            AppColor.primary,
                                                            shape:
                                                            BoxShape.circle,
                                                          ),
                                                          alignment:
                                                          Alignment.center,
                                                          child: CustomText(
                                                            text: '${chatData.numUnReadMessage}' ?? " ",
                                                            color: AppColor
                                                                .white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.w500,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    } else {
                                      return const Text('');
                                    }
                                  });
                            },
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return ChatShimmer(
                enabled: snapshot.connectionState == ConnectionState.waiting);
          }
        },
      ),
    );
  }
}
