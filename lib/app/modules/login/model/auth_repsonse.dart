class AuthResponse {
  String? status;
  String? message;
  Data? data;

  AuthResponse({this.status, this.message, this.data});

  AuthResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? userType;
  Null? userSubType;
  String? subTypeIds;
  String? assignDistricts;
  String? assignUpazillas;
  String? assignUnions;
  String? assignWards;
  int? socialLogin;
  Null? googleId;
  Null? ipAddress;
  String? fullName;
  String? firstName;
  String? lastName;
  String? designation;
  String? email;
  String? mobileNo;
  Null? userPic;
  Null? signature;
  Null? authorizationFile;
  String? nidNo;
  String? tinNo;
  String? passportNo;
  String? dateOfBirth;
  Null? address;
  Null? birthIdNo;
  int? ethnicId;
  int? gender;
  int? district;
  int? upazila;
  int? union;
  int? ward;
  String? postOffice;
  int? postCode;
  String? houseRoadNo;
  Null? programId;
  int? userStatus;
  int? userVerification;
  int? userAgreement;
  String? userHash;
  String? userHashExpireTime;
  Null? pinNumber;
  Null? otpExpireTime;
  int? firstLogin;
  int? isApproved;
  int? isLock;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
        this.userType,
        this.userSubType,
        this.subTypeIds,
        this.assignDistricts,
        this.assignUpazillas,
        this.assignUnions,
        this.assignWards,
        this.socialLogin,
        this.googleId,
        this.ipAddress,
        this.fullName,
        this.firstName,
        this.lastName,
        this.designation,
        this.email,
        this.mobileNo,
        this.userPic,
        this.signature,
        this.authorizationFile,
        this.nidNo,
        this.tinNo,
        this.passportNo,
        this.dateOfBirth,
        this.address,
        this.birthIdNo,
        this.ethnicId,
        this.gender,
        this.district,
        this.upazila,
        this.union,
        this.ward,
        this.postOffice,
        this.postCode,
        this.houseRoadNo,
        this.programId,
        this.userStatus,
        this.userVerification,
        this.userAgreement,
        this.userHash,
        this.userHashExpireTime,
        this.pinNumber,
        this.otpExpireTime,
        this.firstLogin,
        this.isApproved,
        this.isLock,
        this.createdBy,
        this.updatedBy,
        this.createdAt,
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userType = json['user_type'];
    userSubType = json['user_sub_type'];
    subTypeIds = json['sub_type_ids'];
    assignDistricts = json['assign_districts'];
    assignUpazillas = json['assign_upazillas'];
    assignUnions = json['assign_unions'];
    assignWards = json['assign_wards'];
    socialLogin = json['social_login'];
    googleId = json['google_id'];
    ipAddress = json['ip_address'];
    fullName = json['full_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    designation = json['designation'];
    email = json['email'];
    mobileNo = json['mobile_no'];
    userPic = json['user_pic'];
    signature = json['signature'];
    authorizationFile = json['authorization_file'];
    nidNo = json['nid_no'];
    tinNo = json['tin_no'];
    passportNo = json['passport_no'];
    dateOfBirth = json['date_of_birth'];
    address = json['address'];
    birthIdNo = json['birth_id_no'];
    ethnicId = json['ethnic_id'];
    gender = json['gender'];
    district = json['district'];
    upazila = json['upazila'];
    union = json['union'];
    ward = json['ward'];
    postOffice = json['post_office'];
    postCode = json['post_code'];
    houseRoadNo = json['house_road_no'];
    programId = json['program_id'];
    userStatus = json['user_status'];
    userVerification = json['user_verification'];
    userAgreement = json['user_agreement'];
    userHash = json['user_hash'];
    userHashExpireTime = json['user_hash_expire_time'];
    pinNumber = json['pin_number'];
    otpExpireTime = json['otp_expire_time'];
    firstLogin = json['first_login'];
    isApproved = json['is_approved'];
    isLock = json['is_lock'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_type'] = this.userType;
    data['user_sub_type'] = this.userSubType;
    data['sub_type_ids'] = this.subTypeIds;
    data['assign_districts'] = this.assignDistricts;
    data['assign_upazillas'] = this.assignUpazillas;
    data['assign_unions'] = this.assignUnions;
    data['assign_wards'] = this.assignWards;
    data['social_login'] = this.socialLogin;
    data['google_id'] = this.googleId;
    data['ip_address'] = this.ipAddress;
    data['full_name'] = this.fullName;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['designation'] = this.designation;
    data['email'] = this.email;
    data['mobile_no'] = this.mobileNo;
    data['user_pic'] = this.userPic;
    data['signature'] = this.signature;
    data['authorization_file'] = this.authorizationFile;
    data['nid_no'] = this.nidNo;
    data['tin_no'] = this.tinNo;
    data['passport_no'] = this.passportNo;
    data['date_of_birth'] = this.dateOfBirth;
    data['address'] = this.address;
    data['birth_id_no'] = this.birthIdNo;
    data['ethnic_id'] = this.ethnicId;
    data['gender'] = this.gender;
    data['district'] = this.district;
    data['upazila'] = this.upazila;
    data['union'] = this.union;
    data['ward'] = this.ward;
    data['post_office'] = this.postOffice;
    data['post_code'] = this.postCode;
    data['house_road_no'] = this.houseRoadNo;
    data['program_id'] = this.programId;
    data['user_status'] = this.userStatus;
    data['user_verification'] = this.userVerification;
    data['user_agreement'] = this.userAgreement;
    data['user_hash'] = this.userHash;
    data['user_hash_expire_time'] = this.userHashExpireTime;
    data['pin_number'] = this.pinNumber;
    data['otp_expire_time'] = this.otpExpireTime;
    data['first_login'] = this.firstLogin;
    data['is_approved'] = this.isApproved;
    data['is_lock'] = this.isLock;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}