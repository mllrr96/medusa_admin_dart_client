
import '../index.dart';

class CreateShippingOptionReq {
  CreateShippingOptionReq({required this.shippingOption});
  final ShippingOption shippingOption;

  Map<String, dynamic> toJson() {
    return shippingOption.toJson();
  }
}

class UpdateShippingOptionReq {
  UpdateShippingOptionReq({required this.shippingOption});
  final ShippingOption shippingOption;

  Map<String, dynamic> toJson() {
    return shippingOption.toJson();
  }
}
