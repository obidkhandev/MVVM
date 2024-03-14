class UserModel {
  final int id;
  final String username;
  final String name;
  final String state; // nullable
  final String avatarUrl; // nullable

  UserModel({
    required this.id,
    required this.username,
    required this.name,
    required this.state,
    required this.avatarUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int? ?? 0,
      username: json['username'] as String? ?? '',
      name: json['name'] as String? ?? '',
      state: json['state'] as String? ?? "",
      avatarUrl: json['avatar_url'] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['username'] = username;
    data['name'] = name;
    data['state'] = state;
    data['avatar_url'] = avatarUrl;
    return data;
  }
}
