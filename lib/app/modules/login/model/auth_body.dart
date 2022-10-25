class AuthBody {
  String? loginId;
  String? password;
  bool? rememberMe;

  AuthBody({this.loginId, this.password, this.rememberMe});

  AuthBody.fromJson(Map<String, dynamic> json) {
    loginId = json['login_id'];
    password = json['password'];
    rememberMe = json['remember_me'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login_id'] = this.loginId;
    data['password'] = this.password;
    data['remember_me'] = this.rememberMe;
    return data;
  }
}