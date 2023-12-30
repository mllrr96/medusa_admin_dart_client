import '../store_models/store/index.dart';

class StoreGiftCardsRes {
  final GiftCard? giftCard;
  StoreGiftCardsRes({required this.giftCard});
  factory StoreGiftCardsRes.fromJson(json) {
    return StoreGiftCardsRes(
      giftCard: json['gift_card'] != null
          ? GiftCard.fromJson(json['gift_card'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["gift_card"] = giftCard?.toJson();
    return data;
  }
}
