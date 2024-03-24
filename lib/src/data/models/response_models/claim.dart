import '../index.dart';

class CancelClaimRes {
  final Order? order;
  const CancelClaimRes(this.order);

  factory CancelClaimRes.fromJson(Map<String, dynamic> json) {
    return CancelClaimRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}

class CreateClaimShipmentRes {
  final Order? order;
  const CreateClaimShipmentRes(this.order);

  factory CreateClaimShipmentRes.fromJson(Map<String, dynamic> json) {
    return CreateClaimShipmentRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}

class CreateClaimRes {
  final Order? order;
  const  CreateClaimRes(this.order);

  factory CreateClaimRes.fromJson(Map<String, dynamic> json) {
    return CreateClaimRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}

class UpdateClaimRes {
  final Order? order;
  const UpdateClaimRes(this.order);

  factory UpdateClaimRes.fromJson(Map<String, dynamic> json) {
    return UpdateClaimRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}
