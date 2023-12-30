import '../../../enum/enums.dart';
import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/price_list.g.dart';

@CopyWith()
class PriceList {
  final String? id;
  final String? name;
  final String? description;
  final PriceListType type;
  final PriceListStatus status;
  final DateTime? startsAt;
  final DateTime? endsAt;
  final List<CustomerGroup>? customerGroups;
  final List<MoneyAmount>? prices;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  PriceList({
    this.id,
    this.name,
    this.description,
    this.type = PriceListType.sale,
    this.status = PriceListStatus.draft,
    this.startsAt,
    this.endsAt,
    this.customerGroups,
    this.prices,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory PriceList.fromJson(Map<String, dynamic> json) {
    return PriceList(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      type: PriceListType.values.firstWhere((element) => json['type'] ?? '',
          orElse: () => PriceListType.sale),
      status: PriceListStatus.values.firstWhere(
          (element) => json['status'] ?? '',
          orElse: () => PriceListStatus.draft),
      startsAt: DateTime.tryParse(json['starts_at'] ?? ''),
      endsAt: DateTime.tryParse(json['ends_at'] ?? ''),
      customerGroups: json['customer_groups'] != null
          ? (json['customer_groups'] as List)
              .map((i) => CustomerGroup.fromJson(i))
              .toList()
          : null,
      prices: json['prices'] != null
          ? (json['prices'] as List)
              .map((i) => MoneyAmount.fromJson(i))
              .toList()
          : null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
    );
  }
}
