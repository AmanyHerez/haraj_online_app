import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/chat_message.dart';
import '../model/send_message_response.dart';
import 'fb_helper.dart';

class FbFireStoreMessagesController with FbHelper {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FbFireStoreMessagesController._();
  static FbFireStoreMessagesController? _instance;
  factory FbFireStoreMessagesController() {
    return _instance ??= FbFireStoreMessagesController._();
  }
  Stream<QuerySnapshot<ChatMessage>> fetchChatMessages(String chatId) async* {
    yield* _firestore
        .collection("ChatMessages")
        .where("chat_id", whereIn: [chatId])
        .orderBy('sent_at', descending: true)
        .withConverter<ChatMessage>(
          fromFirestore: (snapshot, options) =>
              ChatMessage.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        )
        .snapshots();
  }

  Future<SendMessageResponse> sendMessage(ChatMessage chatMessage) async {
    return _firestore
        .collection("ChatMessages")
        .add(chatMessage.toJson())
        .then((value) {
      return SendMessageResponse(id: value.id, success: true);
    }).catchError((error) {
      return SendMessageResponse(id: '', success: false);
    });
  }

  Future<bool> updateMessage(ChatMessage chatMessage) async {
    return _firestore
        .collection("ChatMessages")
        .doc(chatMessage.id)
        .update(chatMessage.toJson())
        .then((value) {
      return true;
    }).catchError((error) {
      return false;
    });
  }

  Future<void> deleteRejectedChatMessages(String chatId) async {
    QuerySnapshot result = await _firestore
        .collection("ChatMessages")
        .where('chat_id', isEqualTo: chatId)
        .get();
    for (var element in result.docs) {
      element.reference.delete();
    }
  }

  Future<void> deleteMessage(String id) async {
    await _firestore.collection("ChatMessages").doc(id).delete();
  }

  Future<bool> updateLastMessage({
    required String lastMessageText,
    required String lastMessageTime,
    required String chatId,
  }) async {
    return _firestore
        .collection("Chats")
        .doc(chatId)
        .update({
          "last_message_text": lastMessageText,
          'last_message_time': lastMessageTime,
        })
        .then((value) => true)
        .catchError((error) => false);
  }
}
