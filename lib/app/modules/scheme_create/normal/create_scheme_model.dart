class CreateSchemeModel {
  String? id;
  int? userId;
  String? ideaTitle;
  String? noOfBfSizeArea;
  String? noOfBfSizeFamily;
  String? noOfBfSizeIndividuals;
  String? fiscalYear;
  String? envEffect;
  String? apAnotherAgency;
  String? alreadyAgency;
  List<String>? agencyName;
  int? district;
  int? upazila;
  int? union;
  int? ward;
  String? holdingNo;
  String? surroundingArea;
  String? streetAddress;
  String? landDispute;
  String? applicationBody;
  int? applicationTo;
  int? categoryId;

  String? alreadyAgencyName;

  CreateSchemeModel(
      {this.id,
        this.userId,
        this.ideaTitle,
        this.noOfBfSizeArea,
        this.noOfBfSizeFamily,
        this.noOfBfSizeIndividuals,
        this.fiscalYear,
        this.envEffect,
        this.apAnotherAgency,
        this.alreadyAgency,
        this.agencyName,
        this.district,
        this.upazila,
        this.union,
        this.ward,
        this.holdingNo,
        this.surroundingArea,
        this.streetAddress,
        this.landDispute,
        this.applicationBody,
        this.applicationTo,
        this.categoryId,

        this.alreadyAgencyName});

  CreateSchemeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    ideaTitle = json['idea_title'];
    noOfBfSizeArea = json['no_of_bf_size_area'];
    noOfBfSizeFamily = json['no_of_bf_size_family'];
    noOfBfSizeIndividuals = json['no_of_bf_size_individuals'];
    fiscalYear = json['fiscal_year'];
    envEffect = json['env_effect'];
    apAnotherAgency = json['ap_another_agency'];
    alreadyAgency = json['already_agency'];
    agencyName = json['agency_name'].cast<String>();
    district = json['district'];
    upazila = json['upazila'];
    union = json['union'];
    ward = json['ward'];
    holdingNo = json['holding_no'];
    surroundingArea = json['surrounding_area'];
    streetAddress = json['street_address'];
    landDispute = json['land_dispute'];
    applicationBody = json['application_body'];
    applicationTo = json['application_to'];
    categoryId = json['category_id'];
    alreadyAgencyName = json['already_agency_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['idea_title'] = this.ideaTitle;
    data['no_of_bf_size_area'] = this.noOfBfSizeArea;
    data['no_of_bf_size_family'] = this.noOfBfSizeFamily;
    data['no_of_bf_size_individuals'] = this.noOfBfSizeIndividuals;
    data['fiscal_year'] = this.fiscalYear;
    data['env_effect'] = this.envEffect;
    data['ap_another_agency'] = this.apAnotherAgency;
    data['already_agency'] = this.alreadyAgency;
    data['agency_name'] = this.agencyName;
    data['district'] = this.district;
    data['upazila'] = this.upazila;
    data['union'] = this.union;
    data['ward'] = this.ward;
    data['holding_no'] = this.holdingNo;
    data['surrounding_area'] = this.surroundingArea;
    data['street_address'] = this.streetAddress;
    data['land_dispute'] = this.landDispute;
    data['application_body'] = this.applicationBody;
    data['application_to'] = this.applicationTo;
    data['category_id'] = this.categoryId;

    data['already_agency_name'] = this.alreadyAgencyName;
    return data;
  }
}