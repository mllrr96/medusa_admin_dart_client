import '../index.dart';

class UserGiftCardRes {
  final GiftCard? giftCard;
  UserGiftCardRes(this.giftCard);

  factory UserGiftCardRes.fromJson(Map<String, dynamic> json) {
    return UserGiftCardRes(json['gift_card'] != null
        ? GiftCard.fromJson(json['gift_card'])
        : null);
  }
}

class UserGiftCardsRes {
  final List<GiftCard>? giftCards;
  final int? limit;
  final int? offset;
  final int? count;
  UserGiftCardsRes({this.giftCards, this.limit, this.offset, this.count});

  factory UserGiftCardsRes.fromJson(Map<String, dynamic> json) {
    return UserGiftCardsRes(
      giftCards: json['gift_cards'] != null
          ? List<GiftCard>.from(
              json['gift_cards'].map((x) => GiftCard.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserDeleteGiftCardRes {
  /// The ID of the deleted Gift Card
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "gift_card"
  final String? object;

  /// Whether the gift card was deleted successfully or not.
  final bool deleted;
  UserDeleteGiftCardRes({required this.deleted, this.id, this.object});
  factory UserDeleteGiftCardRes.fromJson(json) {
    return UserDeleteGiftCardRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
