class UserModel {
  String username;
  String imageUrl;
  int comments;
  UserModel({
    required this.username,
    required this.imageUrl,
    required this.comments,
  });
  bool get loggedIn => 'reisalvaro' == username;
}
