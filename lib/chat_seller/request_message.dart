import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../modules/chat/custom_chat_screen.dart';
import '../modules/chat/data/my_data.dart';
import '../modules/chat/data/time_date_send.dart';
import '../modules/chat/firebase/fb_firestore_chats_controller.dart';
import '../modules/chat/firebase/fb_firestore_users_controller.dart';
import '../modules/chat/get/controllers/app/profile_screen_controller.dart';
import '../modules/chat/model/chat.dart';
import '../modules/chat/model/chat_user.dart';
import '../modules/chat/widget/shimmer/request_send_shimmer.dart';
import '../shared/components/custom_cached_network_image.dart';
import '../shared/components/custom_divider.dart';
import '../shared/components/custom_text.dart';
import '../shared/style/color_manager.dart';
import '../shared/widget/row_divider_widget.dart';
class RequestMessageWidget extends GetView<ProfileScreenController> {
  const RequestMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileScreenController());
    return  Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowDividerWidget(text: '${controller.counterMessagingRequests.value} request'),
            StreamBuilder<QuerySnapshot<Chat>>(
                stream: FbFireStoreChatsController()
                    .fetchChats(ChatStatus.waiting.name),
                builder: (context, snapshot) {
                  if (snapshot.hasData &&
                      snapshot.data!.docs.isNotEmpty &&
                      controller.counterMessagingRequests.value != 0) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                        itemCount:snapshot.data!.docs.length,
                        separatorBuilder: (context, index) {
                          return CustomeDivider();
                        },
                        itemBuilder:(context, index) {
                          Chat chatData = snapshot.data!.docs[index].data();
                          String peerId = chatData.getPeerId();
                          if (chatData.createdBy != myID &&
                              chatData.lastMessageText.trim().isNotEmpty) {
                            return FutureBuilder<ChatUser?>(
                                future: FbFireStoreUsersController()
                                    .getPeerDetails(peerId),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    final peer = snapshot.data!;
                                    return InkWell(
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
                                                clipBehavior:
                                                Clip.antiAlias,
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
                                                  padding:
                                                  EdgeInsets.all(1),
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
                                                    decoration:
                                                    BoxDecoration(
                                                      color: peer.online
                                                          ? AppColor.online
                                                          : AppColor.grey,
                                                      shape:
                                                      BoxShape.circle,
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
                                                      text:  timeSend(int.tryParse(
                                                          chatData.createdAt) ??
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
                                                CustomText(
                                                  text: chatData
                                                      .lastMessageText,
                                                  fontSize: 12,
                                                  color: AppColor.grey4,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return Container();
                                  }
                                });
                          } else {
                            return Container();
                          }
                        },
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    );
                  } else {
                    return RequestSentShimmer(
                        enabled: snapshot.connectionState ==
                            ConnectionState.waiting);
                  }
                }),
          ],
        ),
      ),
    );
  }
}


