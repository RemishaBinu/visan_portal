class User {
  int id;
  String fullName;
  String profileImage;

  User({required this.id, required this.fullName, required this.profileImage});
  factory User.Default(){
    return User(id: 0, fullName: "Elon Musk", profileImage: "https://api.lorem.space/image/face?w=150&h=150");
  }
}