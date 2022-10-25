class FilterModel {
  List<DataScheme>? data;

  Meta? meta;

  FilterModel({this.data, this.meta});

  FilterModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataScheme>[];
      json['data'].forEach((v) {
        data!.add(new DataScheme.fromJson(v));
      });
    }

    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }

    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class DataScheme {
  int? id;
  int? userId;
  int? categoryId;
  int? schemeProjectId;
  int? district;
  int? upazila;
  int? union;
  int? ward;
  String? holdingNo;
  String? surroundingArea;
  String? streetAddress;
  String? landDispute;
  String? ideaTitle;
  int? applicationTo;

  String? noOfBfSizeArea;
  String? noOfBfSizeFamily;
  String? noOfBfSizeIndividuals;
  String? apAnotherAgency;
  String? alreadyAgency;
  String? fiscalYear;
  String? envEffect;

  String? applicationBody;
  int? statusId;

  String? createdAt;
  String? trackingNo;

  DataScheme(
      {this.id,
      this.userId,
      this.categoryId,
      this.schemeProjectId,
      this.district,
      this.upazila,
      this.union,
      this.ward,
      this.holdingNo,
      this.surroundingArea,
      this.streetAddress,
      this.landDispute,
      this.ideaTitle,
      this.applicationTo,
      this.noOfBfSizeArea,
      this.noOfBfSizeFamily,
      this.noOfBfSizeIndividuals,
      this.apAnotherAgency,
      this.alreadyAgency,
      this.fiscalYear,
      this.envEffect,
      this.applicationBody,
      this.statusId,
      this.createdAt,
      this.trackingNo});

  DataScheme.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    schemeProjectId = json['scheme_project_id'];
    district = json['district'];
    upazila = json['upazila'];
    union = json['union'];
    ward = json['ward'];
    holdingNo = json['holding_no'];
    surroundingArea = json['surrounding_area'];
    streetAddress = json['street_address'];
    landDispute = json['land_dispute'];
    ideaTitle = json['idea_title'];
    applicationTo = json['application_to'];

    noOfBfSizeArea = json['no_of_bf_size_area'];
    noOfBfSizeFamily = json['no_of_bf_size_family'];
    noOfBfSizeIndividuals = json['no_of_bf_size_individuals'];
    apAnotherAgency = json['ap_another_agency'];
    alreadyAgency = json['already_agency'];
    fiscalYear = json['fiscal_year'];

    envEffect = json['env_effect'];

    applicationBody = json['application_body'];
    statusId = json['status_id'];

    createdAt = json['created_at'];
    trackingNo = json['tracking_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['category_id'] = this.categoryId;
    data['scheme_project_id'] = this.schemeProjectId;
    data['district'] = this.district;
    data['upazila'] = this.upazila;
    data['union'] = this.union;
    data['ward'] = this.ward;
    data['holding_no'] = this.holdingNo;
    data['surrounding_area'] = this.surroundingArea;
    data['street_address'] = this.streetAddress;
    data['land_dispute'] = this.landDispute;
    data['idea_title'] = this.ideaTitle;
    data['application_to'] = this.applicationTo;

    data['no_of_bf_size_area'] = this.noOfBfSizeArea;
    data['no_of_bf_size_family'] = this.noOfBfSizeFamily;
    data['no_of_bf_size_individuals'] = this.noOfBfSizeIndividuals;
    data['ap_another_agency'] = this.apAnotherAgency;
    data['already_agency'] = this.alreadyAgency;
    data['fiscal_year'] = this.fiscalYear;

    data['env_effect'] = this.envEffect;

    data['application_body'] = this.applicationBody;
    data['status_id'] = this.statusId;

    data['created_at'] = this.createdAt;
    data['tracking_no'] = this.trackingNo;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  Null? prev;
  Null? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Links>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.links,
      this.path,
      this.perPage,
      this.to,
      this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}
