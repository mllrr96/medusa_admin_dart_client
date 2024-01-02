import '../orders/index.dart';
import '../products/index.dart';
import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/line_item.g.dart';

@CopyWith()
class LineItem {
  /// The line item's id
  ///
  /// Example: "item_01G8ZC9GWT6B2GP5FSXRXNFNGN"
  final String? id;

  /// The id of the cart that the line item may belongs to.
  ///
  /// Example: "cart_01G8ZH853Y6TFXWPG5EYE81X63"
  final String? cartId;

  /// The details of the cart that the line item may belongs to.
  final Cart? cart;

  /// The id of the order that the line item may belongs to.
  ///
  /// Example: "order_01G8TJSYT9M6AVS5N4EMNFS1EK"
  final String? orderId;

  /// The details of the order that the line item may belongs to.
  final Order? order;

  /// The id of the swap that the line item may belong to.
  final String? swapId;

  /// The details of the swap that the line item may belong to.
  final Swap? swap;

  /// The id of the claim that the line item may belong to.
  final String? claimOrderId;

  /// The details of the claim that the line item may belong to.
  final ClaimOrder? claimOrder;

  /// The details of the item's tax lines.
  final List<LineItemTaxLine>? taxLines;

  /// The details of the item's adjustments, which are available when a discount is applied on the item.
  final List<LineItemAdjustment>? adjustments;

  /// The title of the line item.
  ///
  /// Example: "Medusa Coffee Mug"
  final String? title;

  /// A more detailed description of the contents of the line item.
  ///
  /// Example: "One Size"
  final String? description;

  /// A url string to a small image of the contents of the line item.
  ///
  /// Example: "https://medusa-public-images.s3.eu-west-1.amazonaws.com/coffee-mug.png"
  final String? thumbnail;

  /// Is the item being returned
  final bool? isReturn;

  /// Flag to indicate if the line item is a gift card.
  final bool? isGiftCard;

  /// Flag to indicate if new line items with the same variant should be merged or added as an additional line item.
  ///
  /// Default: true
  final bool? shouldMerge;

  /// Flag to indicate if the line item should be included when doing discount calculations.
  final bool? allowDiscounts;

  /// Flag to indicate if the line item has fulfillment associated with it.
  final bool? hasShipping;

  /// The price of one unit of the content in the line item. this should be in the currency defined by the cart/order/swap/claim that the line item belongs to.
  ///
  /// Example: 8000
  final int? unitPrice;

  /// The id of the product variant contained in the line item.
  ///
  /// Example: "variant_01G1G5V2MRX2V3PVSR2WXYPFB6"
  final String? variantId;

  /// The details of the product variant that this item was created from.
  final ProductVariant? variant;

  /// The quantity of the content in the line item.
  final int? quantity;

  /// The quantity of the line item that has been fulfilled.
  final int? fulfilledQuantity;

  /// The quantity of the line item that has been returned.
  final int? returnedQuantity;

  /// The quantity of the line item that has been shipped.
  final int? shippedQuantity;

  /// The amount that can be refunded from the given line item. takes taxes and discounts into consideration.
  final int? refundable;

  /// The subtotal of the line item
  final int? subtotal;

  /// The total of tax of the line item
  final int? taxTotal;

  /// The total amount of the line item
  final int? total;

  /// The original total amount of the line item
  final int? originalTotal;

  /// The original tax total amount of the line item
  final int? originalTaxTotal;

  /// The total of discount of the line item
  final int? rawDiscountTotal;

  /// The total of discount of the line item rounded
  final int? discountTotal;

  /// The total of the gift card of the line item
  final int? giftCardTotal;

  /// Indicates if the line item unit_price include tax
  ///
  /// Feature flag
  final bool? includesTax;

  /// The id of the original line item. this is useful if the line item belongs to a resource that references an order, such as a return or an order edit.
  final String? originalItemId;

  /// The id of the order edit that the item may belong to.
  final String? orderEditId;

  /// The details of the order edit.
  final OrderEdit? orderEdit;

  /// The date with timezone at which the resource was created.
  final DateTime? createdAt;

  /// The date with timezone at which the resource was updated.
  final DateTime? updatedAt;

  /// An optional key-value map with additional details
  final Map<String, dynamic>? metadata;

  const LineItem({
    this.id,
    this.cartId,
    this.cart,
    this.orderId,
    this.order,
    this.swapId,
    this.swap,
    this.claimOrderId,
    this.rawDiscountTotal,
    this.claimOrder,
    this.taxLines,
    this.adjustments,
    this.title,
    this.description,
    this.thumbnail,
    this.isReturn,
    this.isGiftCard,
    this.shouldMerge,
    this.allowDiscounts,
    this.hasShipping,
    this.unitPrice,
    this.variantId,
    this.variant,
    required this.quantity,
    this.fulfilledQuantity,
    this.returnedQuantity,
    this.shippedQuantity,
    this.refundable,
    this.subtotal,
    this.taxTotal,
    this.total,
    this.originalTotal,
    this.originalTaxTotal,
    this.discountTotal,
    this.giftCardTotal,
    this.includesTax,
    this.originalItemId,
    this.orderEditId,
    this.orderEdit,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

  factory LineItem.fromJson(Map<String, dynamic> json) {
    List<LineItemTaxLine>? taxLines;
    List<LineItemAdjustment>? adjustments;

    if (json['tax_lines'] != null) {
      taxLines = <LineItemTaxLine>[];
      json['tax_lines']
          .forEach((e) => taxLines!.add(LineItemTaxLine.fromJson(e)));
    }
    if (json['adjustments'] != null) {
      adjustments = <LineItemAdjustment>[];
      json['adjustments']
          .forEach((e) => adjustments!.add(LineItemAdjustment.fromJson(e)));
    }

    return LineItem(
      id: json['id'],
      cartId: json['cart_id'],
      cart: json['cart'] != null ? Cart.fromJson(json['cart']) : null,
      orderId: json['order_id'],
      order: json['order'] != null ? Order.fromJson(json['order']) : null,
      swapId: json['swap_id'],
      swap: json['swap'] != null ? Swap.fromJson(json['swap']) : null,
      claimOrderId: json['claim_order_id'],
      claimOrder: json['claim_order'] != null
          ? ClaimOrder.fromJson(json['claim_order'])
          : null,
      title: json['title'],
      description: json['description'],
      thumbnail: json['thumbnail'],
      isReturn: json['is_return'],
      isGiftCard: json['is_giftcard'],
      shouldMerge: json['should_merge'],
      allowDiscounts: json['allow_discounts'],
      hasShipping: json['has_shipping'],
      unitPrice: json['unit_price'],
      variantId: json['variant_id'],
      adjustments: adjustments,
      taxLines: taxLines,
      variant: json['variant'] != null
          ? ProductVariant.fromJson(json['variant'])
          : null,
      quantity: json['quantity'],
      fulfilledQuantity: json['fulfilled_quantity'],
      shippedQuantity: json['shipped_quantity'],
      refundable: json['refundable'],
      subtotal: json['subtotal'],
      taxTotal: json['tax_total'],
      total: json['total'],
      originalTotal: json['original_total'],
      originalTaxTotal: json['original_tax_total'],
      discountTotal: json['discount_total'],
      giftCardTotal: json['gift_card_total'],
      includesTax: json['includes_tax'],
      originalItemId: json['original_item_id'],
      orderEditId: json['order_edit_id'],
      orderEdit: json['order_edit'] != null
          ? OrderEdit.fromJson(json['order_edit'])
          : null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['item_id'] = id;
    }

    if (cartId != null) {
      json['cart_id'] = cartId;
    }

    if (cart != null) {
      json['cart'] = cart?.toJson();
    }

    if (orderId != null) {
      json['order_id'] = orderId;
    }

    if (order != null) {
      json['order'] = order?.toJson();
    }

    if (swapId != null) {
      json['swap_id'] = swapId;
    }

    if (swap != null) {
      json['swap'] = swap?.toJson();
    }

    if (claimOrderId != null) {
      json['claim_order_id'] = claimOrderId;
    }

    if (claimOrder != null) {
      json['claim_order'] = claimOrder?.toJson();
    }

    if (taxLines != null) {
      json['tax_lines'] = taxLines?.map((e) => e.toJson()).toList();
    }

    if (adjustments != null) {
      json['adjustments'] = adjustments?.map((e) => e.toJson()).toList();
    }

    if (title != null) {
      json['title'] = title;
    }

    if (description != null) {
      json['description'] = description;
    }

    if (thumbnail != null) {
      json['thumbnail'] = thumbnail;
    }

    if (isReturn != null) {
      json['is_return'] = isReturn;
    }

    if (isGiftCard != null) {
      json['is_giftcard'] = isGiftCard;
    }

    if (shouldMerge != null) {
      json['should_merge'] = shouldMerge;
    }

    if (allowDiscounts != null) {
      json['allow_discounts'] = allowDiscounts;
    }

    if (hasShipping != null) {
      json['has_shipping'] = hasShipping;
    }

    if (unitPrice != null) {
      json['unit_price'] = unitPrice;
    }

    if (variantId != null) {
      json['variant_id'] = variantId;
    }

    if (variant != null) {
      json['variant'] = variant?.toJson();
    }

    if (quantity != null) {
      json['quantity'] = quantity;
    }

    if (fulfilledQuantity != null) {
      json['fulfilled_quantity'] = fulfilledQuantity;
    }

    if (shippedQuantity != null) {
      json['shipped_quantity'] = shippedQuantity;
    }

    if (refundable != null) {
      json['refundable'] = refundable;
    }

    if (subtotal != null) {
      json['subtotal'] = subtotal;
    }

    if (taxTotal != null) {
      json['tax_total'] = taxTotal;
    }

    if (total != null) {
      json['total'] = total;
    }
    if (originalTotal != null) {
      json['original_total'] = originalTotal;
    }
    if (originalTaxTotal != null) {
      json['original_tax_total'] = originalTaxTotal;
    }
    if (discountTotal != null) {
      json['discount_total'] = discountTotal;
    }
    if (giftCardTotal != null) {
      json['gift_card_total'] = giftCardTotal;
    }
    if (includesTax != null) {
      json['includes_tax'] = includesTax;
    }
    if (originalItemId != null) {
      json['original_item_id'] = originalItemId;
    }
    if (orderEditId != null) {
      json['order_edit_id'] = orderEditId;
    }
    if (orderEdit != null) {
      json['order_edit'] = orderEdit?.toJson();
    }
    if (createdAt != null) {
      json['created_at'] = createdAt.toString();
    }
    if (updatedAt != null) {
      json['updated_at'] = updatedAt.toString();
    }
    if (metadata != null) {
      json['metadata'] = metadata.toString();
    }

    return json;
  }
}
