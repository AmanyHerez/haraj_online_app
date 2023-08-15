class ChatUser {
  late String id;
  late String name;
  late String email;
  bool online = false;
  String? image;
  String? mobile;
  String fcmToken = '';
  late String password;
  ChatUser();

  ChatUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    online = json['online'];
    image = json['image'];
    mobile = json['mobile'];
    fcmToken = json['fcm_token'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['online'] = online;
    data['image'] = image;
    data['mobile'] = mobile;
    data['fcm_token'] = fcmToken;
    return data;
  }
}
