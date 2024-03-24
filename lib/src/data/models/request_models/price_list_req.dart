
import '../../enum/enums.dart';
import '../index.dart';

class CreatePriceListReq {
  /// The name of the Price List
  final String name;

  /// A description of the Price List.
  final String description;

  /// The type of the Price List.
  final PriceListType type;

  /// The prices of the Price List.
  final List<MoneyAmount> prices;

  /// The date with timezone that the Price List starts being valid.
  final DateTime? startsAt;

  /// The date with timezone that the Price List ends being valid.
  final DateTime? endsAt;

  /// The status of the Price List.
  final PriceListStatus? status;

  /// A list of customer groups that the Price List applies to.
  final List<String>? customerGroupIds;

  /// [EXPERIMENTAL] Tax included in prices of price list
  final bool? includeTax;

  CreatePriceListReq({
    required this.name,
    required this.description,
    required this.type,
    required this.prices,
    this.status,
    this.endsAt,
    this.customerGroupIds,
    this.startsAt,
    this.includeTax,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['name'] = name;
    json['description'] = description;
    json['type'] = type.value;
    json['prices'] = prices.map((e) => e.toJson()).toList();

    if (startsAt != null) {
      json['starts_at'] = startsAt.toString();
    }

    if (includeTax != null) {
      json['include_tax'] = includeTax;
    }

    if (customerGroupIds != null) {
      var data = <Map<String, dynamic>>[];
      for (var id in customerGroupIds!) {
        data.add({'id': id});
      }
      json['customer_groups'] = data;
    }

    if (endsAt != null) {
      json['ends_at'] = endsAt.toString();
    }

    if (status != null) {
      json['status'] = status!.value;
    }

    return json;
  }
}

class UpdatePriceListReq {
  /// The name of the Price List
  final String? name;

  /// A description of the Price List.
  final String? description;

  /// The type of the Price List.
  final PriceListType? type;

  /// The prices of the Price List.
  final List<MoneyAmount>? prices;

  /// The date with timezone that the Price List starts being valid.
  final DateTime? startsAt;

  /// The date with timezone that the Price List ends being valid.
  final DateTime? endsAt;

  /// The status of the Price List.
  final PriceListStatus? status;

  /// A list of customer groups that the Price List applies to.
  final List<String>? customerGroupIds;

  /// [EXPERIMENTAL] Tax included in prices of price list
  final bool? includeTax;

  UpdatePriceListReq({
    this.name,
    this.description,
    this.type,
    this.prices,
    this.status,
    this.endsAt,
    this.customerGroupIds,
    this.startsAt,
    this.includeTax,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};

    if (name != null) {
      json['name'] = name;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (type != null) {
      json['type'] = type!.value;
    }
    if (prices != null) {
      json['prices'] = prices!.map((e) => e.toJson()).toList();
    }

    if (startsAt != null) {
      json['starts_at'] = startsAt.toString();
    }

    if (includeTax != null) {
      json['include_tax'] = includeTax;
    }

    if (customerGroupIds != null) {
      var data = <Map<String, dynamic>>[];
      for (var id in customerGroupIds!) {
        data.add({'id': id});
      }
      json['customer_groups'] = data;
    }

    if (endsAt != null) {
      json['ends_at'] = endsAt.toString();
    }

    if (status != null) {
      json['status'] = status!.value;
    }

    return json;
  }
}

class UpdatePricesReq {
  List<MoneyAmount> prices;

  /// If true the prices will replace all existing prices associated with the Price List.
  final bool? override;

  UpdatePricesReq({required this.prices, this.override});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['prices'] = prices.map((e) => e.toJson()).toList();
    if (override != null) {
      json['override'] = override;
    }

    return json;
  }
}

