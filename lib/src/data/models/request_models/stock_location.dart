import '../index.dart';

class CreateStockLocationReq {
  /// the name of the stock location
  final String name;

  /// the stock location address ID
  final String? addressId;

  /// Represents a Stock Location Address Input
  final Address? address;

  CreateStockLocationReq(
      {required this.name, this.address, this.addressId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (addressId != null) {
      data['address_id'] = addressId;
    }
    return data;
  }
}

class UpdateStockLocationReq {
  /// the name of the stock location
  final String? name;

  /// the stock location address ID
  final String? addressId;

  /// Represents a Stock Location Address Input
  final Address? address;

  /// An optional key-value map with additional details
  final Map<String, dynamic>? metadata;

  UpdateStockLocationReq(
      {this.name, this.address, this.addressId, this.metadata});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (name != null) {
      data['name'] = name;
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (addressId != null) {
      data['address_id'] = addressId;
    }
    return data;
  }
}
