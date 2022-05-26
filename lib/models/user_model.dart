class UserModel {
  String username;
  String imageUrl;
  UserModel({
    required this.username,
    required this.imageUrl,
  });
  bool get loggedIn => 'reisalvaro' == username;
}
