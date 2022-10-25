class SchemDetailedView {
  SchemeD? data;

  SchemDetailedView({this.data});

  SchemDetailedView.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new SchemeD.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class SchemeD {
  int? id;
  int? userId;
  int? categoryId;
  Null? schemeProjectId;
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
  String? agencyName;
  String? alreadyAgencyName;
  String? envEffect;

  String? applicationBody;
  int? statusId;


  String? createdAt;
  String? trackingNo;

  SchemeD(
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
        this.agencyName,
        this.alreadyAgencyName,
        this.envEffect,

        this.applicationBody,
        this.statusId,

        this.createdAt,
        this.trackingNo});

  SchemeD.fromJson(Map<String, dynamic> json) {
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
    agencyName = json['agency_name'];
    alreadyAgencyName = json['already_agency_name'];
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
    data['agency_name'] = this.agencyName;
    data['already_agency_name'] = this.alreadyAgencyName;
    data['env_effect'] = this.envEffect;

    data['application_body'] = this.applicationBody;
    data['status_id'] = this.statusId;



    data['created_at'] = this.createdAt;
    data['tracking_no'] = this.trackingNo;
    return data;
  }
}