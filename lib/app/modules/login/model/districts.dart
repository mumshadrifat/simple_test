class DistrictsModel {
  List<Districts>? data;

  DistrictsModel({this.data});

  DistrictsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Districts>[];
      json['data'].forEach((v) {
        data!.add(new Districts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Districts {
  int? id;
  String? name;
  String? bnName;
  List<Upazilla>? upazillas;

  Districts({this.id, this.name, this.bnName, this.upazillas});

  Districts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    bnName = json['bn_name'];
    if (json['upazillas'] != null) {
      upazillas = <Upazilla>[];
      json['upazillas'].forEach((v) {
        upazillas!.add(new Upazilla.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['bn_name'] = this.bnName;
    if (this.upazillas != null) {
      data['upazillas'] = this.upazillas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Upazilla {
  int? id;
  String? name;
  String? bnName;
  List<Union>? unions;

  Upazilla({this.id, this.name, this.bnName, this.unions});

  Upazilla.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    bnName = json['bn_name'];
    if (json['unions'] != null) {
      unions = <Union>[];
      json['unions'].forEach((v) {
        unions!.add(new Union.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['bn_name'] = this.bnName;
    if (this.unions != null) {
      data['unions'] = this.unions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Union {
  int? id;
  String? name;
  String? bnName;

  Union({this.id, this.name, this.bnName});

  Union.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    bnName = json['bn_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['bn_name'] = this.bnName;
    return data;
  }
}