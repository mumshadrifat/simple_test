import 'dart:convert';
/// data : [{"id":5,"user_id":2,"category_id":18,"scheme_project_id":2,"district":4,"upazila":33,"union":1,"ward":1,"holding_no":"","surrounding_area":"","street_address":"","land_dispute":"","idea_title":"Road Construction","application_to":1,"transfer_from":null,"transfer_date":null,"transfer_reason":null,"no_of_bf_size_area":"50","no_of_bf_size_family":"10","no_of_bf_size_individuals":"200","ap_another_agency":"1","already_agency":"1","fiscal_year":"1","agency_name":"[\"LGED\",\"Zilla Porishod\"]","already_agency_name":null,"env_effect":"","env_effect_des":null,"application_body":"<p>test application</p>\n","status_id":18,"approved_date":null,"file":null,"recommendations":[{"id":1,"user_id":76,"recommendations":"recom","file":null}],"created_at":"2022-04-03T06:31:18.000000Z","tracking_no":"BDGOV-0005"},{"id":4,"user_id":107,"category_id":18,"scheme_project_id":3,"district":10,"upazila":88,"union":51,"ward":2,"holding_no":"10","surrounding_area":"12","street_address":"cakma bari","land_dispute":"","idea_title":"রাস্তা উন্নয়ন এর জন্য আবেদন ","application_to":1,"transfer_from":null,"transfer_date":null,"transfer_reason":null,"no_of_bf_size_area":"4","no_of_bf_size_family":"200","no_of_bf_size_individuals":"2000","ap_another_agency":"0","already_agency":"0","fiscal_year":"1","agency_name":null,"already_agency_name":null,"env_effect":"","env_effect_des":null,"application_body":"<p>২০০০ জনগণের জন্য একটা রাস্তা দরকার&nbsp;</p>\n","status_id":18,"approved_date":null,"file":["scheme/2021/applications/1648964923_22587.PNG"],"recommendations":[],"created_at":"2022-04-03T05:48:43.000000Z","tracking_no":"BDGOV-0004"},{"id":3,"user_id":106,"category_id":18,"scheme_project_id":null,"district":11,"upazila":97,"union":93,"ward":1,"holding_no":"15","surrounding_area":"13","street_address":"নতুন পাড়া ","land_dispute":"","idea_title":"গভির নলকূপ এর আবেদন ","application_to":1,"transfer_from":null,"transfer_date":null,"transfer_reason":null,"no_of_bf_size_area":"2","no_of_bf_size_family":"30","no_of_bf_size_individuals":"100","ap_another_agency":"0","already_agency":"0","fiscal_year":"","agency_name":null,"already_agency_name":null,"env_effect":"","env_effect_des":null,"application_body":"<p>অত্র এলাকা বিশুদ্ধ পানির জন্য একটি গভীর নলকূপ দরকার&nbsp;</p>\n","status_id":14,"approved_date":null,"file":["scheme/2021/applications/1648964664_98019.PNG"],"recommendations":[],"created_at":"2022-04-03T05:44:24.000000Z","tracking_no":"BDGOV-0003"},{"id":2,"user_id":128,"category_id":18,"scheme_project_id":1,"district":11,"upazila":97,"union":93,"ward":1,"holding_no":"353","surrounding_area":"3534","street_address":"3453","land_dispute":"","idea_title":"Need Hospital","application_to":1,"transfer_from":null,"transfer_date":null,"transfer_reason":null,"no_of_bf_size_area":"100","no_of_bf_size_family":"100","no_of_bf_size_individuals":"50","ap_another_agency":"0","already_agency":"0","fiscal_year":"1","agency_name":null,"already_agency_name":null,"env_effect":"","env_effect_des":null,"application_body":"<p>a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;a dadad adasda dasd asds&nbsp;</p>\n","status_id":12,"approved_date":null,"file":["scheme/2021/applications/1648963378_96920.JPEG"],"recommendations":[],"created_at":"2022-04-03T05:22:58.000000Z","tracking_no":"BDGOV-0002"},{"id":1,"user_id":2,"category_id":18,"scheme_project_id":1,"district":11,"upazila":97,"union":93,"ward":1,"holding_no":"10","surrounding_area":"14","street_address":"মোল্লা বাড়ী ","land_dispute":"","idea_title":"হাসপাতাল ভবনের জন্য আবেদন ","application_to":1,"transfer_from":null,"transfer_date":null,"transfer_reason":null,"no_of_bf_size_area":"5","no_of_bf_size_family":"100","no_of_bf_size_individuals":"100000","ap_another_agency":"0","already_agency":"0","fiscal_year":"1","agency_name":null,"already_agency_name":null,"env_effect":"","env_effect_des":null,"application_body":"<p>জনসাধারণ এর উন্নত চিকিৎসা ব্যবস্থাকরন &nbsp;</p>\n","status_id":12,"approved_date":null,"file":["scheme/2021/applications/1648963373_04779.PNG"],"recommendations":[],"created_at":"2022-04-03T05:22:53.000000Z","tracking_no":"BDGOV-0001"}]
/// links : {"first":"http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications?page=1","last":"http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications?page=1","prev":null,"next":null}
/// meta : {"current_page":1,"from":1,"last_page":1,"links":[{"url":null,"label":"pagination.previous","active":false},{"url":"http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications?page=1","label":"1","active":true},{"url":null,"label":"pagination.next","active":false}],"path":"http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications","per_page":8,"to":5,"total":5}

SchemeListResponse schemeListResponseFromJson(String str) => SchemeListResponse.fromJson(json.decode(str));
String scheme_list_responseToJson(SchemeListResponse data) => json.encode(data.toJson());


class SchemeListResponse {
  SchemeListResponse({
      List<Data>? data, 
      Links? links, 
      Meta? meta,}){
    _data = data;
    _links = links;
    _meta = meta;
}

  SchemeListResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  List<Data>? _data;
  Links? _links;
  Meta? _meta;

  List<Data>? get data => _data;
  Links? get links => _links;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}

/// current_page : 1
/// from : 1
/// last_page : 1
/// links : [{"url":null,"label":"pagination.previous","active":false},{"url":"http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications?page=1","label":"1","active":true},{"url":null,"label":"pagination.next","active":false}]
/// path : "http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications"
/// per_page : 8
/// to : 5
/// total : 5

Meta metaFromJson(String str) => Meta.fromJson(json.decode(str));
String metaToJson(Meta data) => json.encode(data.toJson());
class Meta {
  Meta({
      int? currentPage, 
      int? from, 
      int? lastPage, 
      List<Links>? links, 
      String? path, 
      int? perPage, 
      int? to, 
      int? total,}){
    _currentPage = currentPage;
    _from = from;
    _lastPage = lastPage;
    _links = links;
    _path = path;
    _perPage = perPage;
    _to = to;
    _total = total;
}

  Meta.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    _from = json['from'];
    _lastPage = json['last_page'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _path = json['path'];
    _perPage = json['per_page'];
    _to = json['to'];
    _total = json['total'];
  }
  int? _currentPage;
  int? _from;
  int? _lastPage;
  List<Links>? _links;
  String? _path;
  int? _perPage;
  int? _to;
  int? _total;

  int? get currentPage => _currentPage;
  int? get from => _from;
  int? get lastPage => _lastPage;
  List<Links>? get links => _links;
  String? get path => _path;
  int? get perPage => _perPage;
  int? get to => _to;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}

/// url : null
/// label : "pagination.previous"
/// active : false

Links linksFromJson(String str) => Links.fromJson(json.decode(str));
String linksToJson(Links data) => json.encode(data.toJson());
class Links {
  Links({
      dynamic url, 
      String? label, 
      bool? active,}){
    _url = url;
    _label = label;
    _active = active;
}

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }
  dynamic _url;
  String? _label;
  bool? _active;

  dynamic get url => _url;
  String? get label => _label;
  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }

}

/// first : "http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications?page=1"
/// last : "http://127.0.0.1/lm-mochta-scheme-service/public/api/v1/scheme/applications?page=1"
/// prev : null
/// next : null

Links linkssFromJson(String str) => Links.fromJson(json.decode(str));
String linkssToJson(Links data) => json.encode(data.toJson());
class Linkss {
  Links({
      String? first, 
      String? last, 
      dynamic prev, 
      dynamic next,}){
    _first = first;
    _last = last;
    _prev = prev;
    _next = next;
}

  Linkss.fromJson(dynamic json) {
    _first = json['first'];
    _last = json['last'];
    _prev = json['prev'];
    _next = json['next'];
  }
  String? _first;
  String? _last;
  dynamic _prev;
  dynamic _next;

  String? get first => _first;
  String? get last => _last;
  dynamic get prev => _prev;
  dynamic get next => _next;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first'] = _first;
    map['last'] = _last;
    map['prev'] = _prev;
    map['next'] = _next;
    return map;
  }

}

/// id : 5
/// user_id : 2
/// category_id : 18
/// scheme_project_id : 2
/// district : 4
/// upazila : 33
/// union : 1
/// ward : 1
/// holding_no : ""
/// surrounding_area : ""
/// street_address : ""
/// land_dispute : ""
/// idea_title : "Road Construction"
/// application_to : 1
/// transfer_from : null
/// transfer_date : null
/// transfer_reason : null
/// no_of_bf_size_area : "50"
/// no_of_bf_size_family : "10"
/// no_of_bf_size_individuals : "200"
/// ap_another_agency : "1"
/// already_agency : "1"
/// fiscal_year : "1"
/// agency_name : "[\"LGED\",\"Zilla Porishod\"]"
/// already_agency_name : null
/// env_effect : ""
/// env_effect_des : null
/// application_body : "<p>test application</p>\n"
/// status_id : 18
/// approved_date : null
/// file : null
/// recommendations : [{"id":1,"user_id":76,"recommendations":"recom","file":null}]
/// created_at : "2022-04-03T06:31:18.000000Z"
/// tracking_no : "BDGOV-0005"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? id, 
      int? userId, 
      int? categoryId, 
      int? schemeProjectId, 
      int? district, 
      int? upazila, 
      int? union, 
      int? ward, 
      String? holdingNo, 
      String? surroundingArea, 
      String? streetAddress, 
      String? landDispute, 
      String? ideaTitle, 
      int? applicationTo, 
      dynamic transferFrom, 
      dynamic transferDate, 
      dynamic transferReason, 
      String? noOfBfSizeArea, 
      String? noOfBfSizeFamily, 
      String? noOfBfSizeIndividuals, 
      String? apAnotherAgency, 
      String? alreadyAgency, 
      String? fiscalYear, 
      String? agencyName, 
      dynamic alreadyAgencyName, 
      String? envEffect, 
      dynamic envEffectDes, 
      String? applicationBody, 
      int? statusId, 
      dynamic approvedDate, 
      dynamic file, 
      List<Recommendations>? recommendations, 
      String? createdAt, 
      String? trackingNo,}){
    _id = id;
    _userId = userId;
    _categoryId = categoryId;
    _schemeProjectId = schemeProjectId;
    _district = district;
    _upazila = upazila;
    _union = union;
    _ward = ward;
    _holdingNo = holdingNo;
    _surroundingArea = surroundingArea;
    _streetAddress = streetAddress;
    _landDispute = landDispute;
    _ideaTitle = ideaTitle;
    _applicationTo = applicationTo;
    _transferFrom = transferFrom;
    _transferDate = transferDate;
    _transferReason = transferReason;
    _noOfBfSizeArea = noOfBfSizeArea;
    _noOfBfSizeFamily = noOfBfSizeFamily;
    _noOfBfSizeIndividuals = noOfBfSizeIndividuals;
    _apAnotherAgency = apAnotherAgency;
    _alreadyAgency = alreadyAgency;
    _fiscalYear = fiscalYear;
    _agencyName = agencyName;
    _alreadyAgencyName = alreadyAgencyName;
    _envEffect = envEffect;
    _envEffectDes = envEffectDes;
    _applicationBody = applicationBody;
    _statusId = statusId;
    _approvedDate = approvedDate;
    _file = file;
    _recommendations = recommendations;
    _createdAt = createdAt;
    _trackingNo = trackingNo;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _categoryId = json['category_id'];
    _schemeProjectId = json['scheme_project_id'];
    _district = json['district'];
    _upazila = json['upazila'];
    _union = json['union'];
    _ward = json['ward'];
    _holdingNo = json['holding_no'];
    _surroundingArea = json['surrounding_area'];
    _streetAddress = json['street_address'];
    _landDispute = json['land_dispute'];
    _ideaTitle = json['idea_title'];
    _applicationTo = json['application_to'];
    _transferFrom = json['transfer_from'];
    _transferDate = json['transfer_date'];
    _transferReason = json['transfer_reason'];
    _noOfBfSizeArea = json['no_of_bf_size_area'];
    _noOfBfSizeFamily = json['no_of_bf_size_family'];
    _noOfBfSizeIndividuals = json['no_of_bf_size_individuals'];
    _apAnotherAgency = json['ap_another_agency'];
    _alreadyAgency = json['already_agency'];
    _fiscalYear = json['fiscal_year'];
    _agencyName = json['agency_name'];
    _alreadyAgencyName = json['already_agency_name'];
    _envEffect = json['env_effect'];
    _envEffectDes = json['env_effect_des'];
    _applicationBody = json['application_body'];
    _statusId = json['status_id'];
    _approvedDate = json['approved_date'];
    _file = json['file'];
    if (json['recommendations'] != null) {
      _recommendations = [];
      json['recommendations'].forEach((v) {
        _recommendations?.add(Recommendations.fromJson(v));
      });
    }
    _createdAt = json['created_at'];
    _trackingNo = json['tracking_no'];
  }
  int? _id;
  int? _userId;
  int? _categoryId;
  int? _schemeProjectId;
  int? _district;
  int? _upazila;
  int? _union;
  int? _ward;
  String? _holdingNo;
  String? _surroundingArea;
  String? _streetAddress;
  String? _landDispute;
  String? _ideaTitle;
  int? _applicationTo;
  dynamic _transferFrom;
  dynamic _transferDate;
  dynamic _transferReason;
  String? _noOfBfSizeArea;
  String? _noOfBfSizeFamily;
  String? _noOfBfSizeIndividuals;
  String? _apAnotherAgency;
  String? _alreadyAgency;
  String? _fiscalYear;
  String? _agencyName;
  dynamic _alreadyAgencyName;
  String? _envEffect;
  dynamic _envEffectDes;
  String? _applicationBody;
  int? _statusId;
  dynamic _approvedDate;
  dynamic _file;
  List<Recommendations>? _recommendations;
  String? _createdAt;
  String? _trackingNo;

  int? get id => _id;
  int? get userId => _userId;
  int? get categoryId => _categoryId;
  int? get schemeProjectId => _schemeProjectId;
  int? get district => _district;
  int? get upazila => _upazila;
  int? get union => _union;
  int? get ward => _ward;
  String? get holdingNo => _holdingNo;
  String? get surroundingArea => _surroundingArea;
  String? get streetAddress => _streetAddress;
  String? get landDispute => _landDispute;
  String? get ideaTitle => _ideaTitle;
  int? get applicationTo => _applicationTo;
  dynamic get transferFrom => _transferFrom;
  dynamic get transferDate => _transferDate;
  dynamic get transferReason => _transferReason;
  String? get noOfBfSizeArea => _noOfBfSizeArea;
  String? get noOfBfSizeFamily => _noOfBfSizeFamily;
  String? get noOfBfSizeIndividuals => _noOfBfSizeIndividuals;
  String? get apAnotherAgency => _apAnotherAgency;
  String? get alreadyAgency => _alreadyAgency;
  String? get fiscalYear => _fiscalYear;
  String? get agencyName => _agencyName;
  dynamic get alreadyAgencyName => _alreadyAgencyName;
  String? get envEffect => _envEffect;
  dynamic get envEffectDes => _envEffectDes;
  String? get applicationBody => _applicationBody;
  int? get statusId => _statusId;
  dynamic get approvedDate => _approvedDate;
  dynamic get file => _file;
  List<Recommendations>? get recommendations => _recommendations;
  String? get createdAt => _createdAt;
  String? get trackingNo => _trackingNo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['category_id'] = _categoryId;
    map['scheme_project_id'] = _schemeProjectId;
    map['district'] = _district;
    map['upazila'] = _upazila;
    map['union'] = _union;
    map['ward'] = _ward;
    map['holding_no'] = _holdingNo;
    map['surrounding_area'] = _surroundingArea;
    map['street_address'] = _streetAddress;
    map['land_dispute'] = _landDispute;
    map['idea_title'] = _ideaTitle;
    map['application_to'] = _applicationTo;
    map['transfer_from'] = _transferFrom;
    map['transfer_date'] = _transferDate;
    map['transfer_reason'] = _transferReason;
    map['no_of_bf_size_area'] = _noOfBfSizeArea;
    map['no_of_bf_size_family'] = _noOfBfSizeFamily;
    map['no_of_bf_size_individuals'] = _noOfBfSizeIndividuals;
    map['ap_another_agency'] = _apAnotherAgency;
    map['already_agency'] = _alreadyAgency;
    map['fiscal_year'] = _fiscalYear;
    map['agency_name'] = _agencyName;
    map['already_agency_name'] = _alreadyAgencyName;
    map['env_effect'] = _envEffect;
    map['env_effect_des'] = _envEffectDes;
    map['application_body'] = _applicationBody;
    map['status_id'] = _statusId;
    map['approved_date'] = _approvedDate;
    map['file'] = _file;
    if (_recommendations != null) {
      map['recommendations'] = _recommendations?.map((v) => v.toJson()).toList();
    }
    map['created_at'] = _createdAt;
    map['tracking_no'] = _trackingNo;
    return map;
  }

}

/// id : 1
/// user_id : 76
/// recommendations : "recom"
/// file : null

Recommendations recommendationsFromJson(String str) => Recommendations.fromJson(json.decode(str));
String recommendationsToJson(Recommendations data) => json.encode(data.toJson());
class Recommendations {
  Recommendations({
      int? id, 
      int? userId, 
      String? recommendations, 
      dynamic file,}){
    _id = id;
    _userId = userId;
    _recommendations = recommendations;
    _file = file;
}

  Recommendations.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _recommendations = json['recommendations'];
    _file = json['file'];
  }
  int? _id;
  int? _userId;
  String? _recommendations;
  dynamic _file;

  int? get id => _id;
  int? get userId => _userId;
  String? get recommendations => _recommendations;
  dynamic get file => _file;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['recommendations'] = _recommendations;
    map['file'] = _file;
    return map;
  }

}