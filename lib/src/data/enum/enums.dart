enum ClaimReason {
  missingItem('missing_item'),
  wrongItem('wrong_item'),
  productFailure('product_failure'),
  other('other');

  final String value;

  @override
  String toString() {
    switch (this) {
      case ClaimReason.missingItem:
        return 'Missing Item';
      case ClaimReason.wrongItem:
        return 'Wrong Item';
      case ClaimReason.productFailure:
        return 'Product Failure';
      case ClaimReason.other:
        return 'Other';
    }
  }

  const ClaimReason(this.value);
}

enum ClaimType {
  refund('refund'),
  replace('replace');

  final String value;

  const ClaimType(this.value);
}

enum FulfillmentStatus {
  notFulfilled('not_fulfilled'),
  partiallyFulfilled('partially_fulfilled'),
  fulfilled('fulfilled'),
  partiallyShipped('partially_shipped'),
  shipped('shipped'),
  partiallyReturned('partially_returned'),
  returned('returned'),
  canceled('canceled'),
  requiresAction('requires_action');

  final String value;

  @override
  String toString() {
    switch (this) {
      case FulfillmentStatus.canceled:
        return 'Canceled';
      case FulfillmentStatus.requiresAction:
        return 'Requires Action';
      case FulfillmentStatus.notFulfilled:
        return 'Not Fulfilled';
      case FulfillmentStatus.partiallyFulfilled:
        return 'Partially Fulfilled';
      case FulfillmentStatus.fulfilled:
        return 'Fulfilled';
      case FulfillmentStatus.partiallyShipped:
        return 'Partially Shipped';
      case FulfillmentStatus.shipped:
        return 'Shipped';
      case FulfillmentStatus.partiallyReturned:
        return 'Partially Shipped';
      case FulfillmentStatus.returned:
        return 'Returned';
    }
  }

  const FulfillmentStatus(this.value);
}

enum PaymentStatus {
  notPaid('not_paid'),
  awaiting('awaiting'),
  captured('captured'),
  partiallyRefunded('partially_refunded'),
  refunded('refunded'),
  canceled('canceled'),
  requiresAction('requires_action');

  final String value;

  @override
  String toString() {
    switch (this) {
      case PaymentStatus.notPaid:
        return 'Not Paid';
      case PaymentStatus.awaiting:
        return 'Awaiting';
      case PaymentStatus.captured:
        return 'Captured';
      case PaymentStatus.partiallyRefunded:
        return 'Partially Refunded';
      case PaymentStatus.refunded:
        return 'Refunded';
      case PaymentStatus.canceled:
        return 'Canceled';
      case PaymentStatus.requiresAction:
        return 'Requires Action';
    }
  }

  const PaymentStatus(this.value);
}

enum OrderStatus {
  pending('pending'),
  completed('completed'),
  archived('archived'),
  canceled('canceled'),
  requiresAction('requires_action');

  final String value;
  @override
  String toString() {
    switch (this) {
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.completed:
        return 'Completed';
      case OrderStatus.archived:
        return 'Archived';
      case OrderStatus.canceled:
        return 'Canceled';
      case OrderStatus.requiresAction:
        return 'Requires Action';
    }
  }

  const OrderStatus(this.value);
}

enum OrderEditStatus {
  confirmed,
  declined,
  requested,
  created,
  canceled,
}

enum RefundReason {
  discount('discount'),
  returns('return'),
  swap('swap'),
  claim('claim'),
  other('other');

  final String value;

  const RefundReason(this.value);
}

enum BatchJobType {
  productImport('product-import'),
  productExport('product-export');

  const BatchJobType(this.value);

  final String value;
}

enum BatchJobStatus {
  created('created'),
  preProcessed('pre_processed'),
  confirmed('confirmed'),
  processing('processing'),
  completed('completed'),
  canceled('canceled'),
  failed('failed');

  const BatchJobStatus(this.value);

  @override
  String toString() {
    switch (this) {
      case BatchJobStatus.created:
        return 'Created';
      case BatchJobStatus.preProcessed:
        return 'Pre Processed';
      case BatchJobStatus.confirmed:
        return 'Confirmed';
      case BatchJobStatus.processing:
        return 'Processing';
      case BatchJobStatus.completed:
        return 'Completed';
      case BatchJobStatus.canceled:
        return 'Canceled';
      case BatchJobStatus.failed:
        return 'Failed';
    }
  }

  final String value;
}

enum DiscountConditionType {
  products('products'),
  productType('product_type'),
  productCollections('product_collections'),
  productTags('product_tags'),
  customerGroups('customer_groups');

  final String value;

  @override
  String toString() {
    switch (this) {
      case DiscountConditionType.products:
        return 'Products';
      case DiscountConditionType.productType:
        return 'Product Type';
      case DiscountConditionType.productCollections:
        return 'Product Collections';
      case DiscountConditionType.productTags:
        return 'Product Tags';
      case DiscountConditionType.customerGroups:
        return 'Customer Groups';
    }
  }

  const DiscountConditionType(this.value);
}

enum DiscountConditionOperator {
  inn('in'),
  notIn('not_in');

  final String value;

  const DiscountConditionOperator(this.value);
}

enum UserRole {
  admin('admin'),
  member('member'),
  developer('developer');

  final String value;

  const UserRole(this.value);

  factory UserRole.fromString(String? value) {
    if (value == 'admin') {
      return UserRole.admin;
    } else if (value == 'developer') {
      return UserRole.developer;
    } else {
      return UserRole.member;
    }
  }
}

enum DraftOrderStatus {
  open('open'),
  completed('completed');

  final String value;

  const DraftOrderStatus(this.value);
}

enum ShippingProfileType {
  defaultType('default'),
  custom('custom'),
  giftCard('gift_card');

  final String value;

  const ShippingProfileType(this.value);
}

enum SwapPaymentStatus {
  notPaid('not_paid'),
  awaiting('awaiting'),
  captured('captured'),
  confirmed('confirmed'),
  canceled('canceled'),
  differenceRefunded('difference_refunded'),
  partiallyRefunded('partially_refunded'),
  refunded('refunded'),
  requiresAction('requires_action');

  final String value;

  @override
  String toString() {
    switch (this) {
      case SwapPaymentStatus.notPaid:
        return 'Not Paid';
      case SwapPaymentStatus.awaiting:
        return 'Awaiting';
      case SwapPaymentStatus.captured:
        return 'Captured';
      case SwapPaymentStatus.confirmed:
        return 'Confirmed';
      case SwapPaymentStatus.canceled:
        return 'Canceled';
      case SwapPaymentStatus.differenceRefunded:
        return 'Difference Refunded';
      case SwapPaymentStatus.partiallyRefunded:
        return 'Partially Refunded';
      case SwapPaymentStatus.refunded:
        return 'Refunded';
      case SwapPaymentStatus.requiresAction:
        return 'Requires Action';
    }
  }

  const SwapPaymentStatus(this.value);
}

enum RequirementType {
  minSubtotal('min_subtotal'),
  maxSubtotal('max_subtotal');

  final String value;

  const RequirementType(this.value);
}

enum PaymentCollectionStatus {
  notPaid('not_paid'),
  awaiting('awaiting'),
  authorized('authorized'),
  canceled('canceled'),
  partiallyAuthorized('partially_authorized');

  final String value;

  @override
  String toString() {
    switch (this) {
      case PaymentCollectionStatus.notPaid:
        return 'Not Paid';
      case PaymentCollectionStatus.awaiting:
        return 'Awaiting';
      case PaymentCollectionStatus.authorized:
        return 'Authorized';
      case PaymentCollectionStatus.canceled:
        return 'Canceled';
      case PaymentCollectionStatus.partiallyAuthorized:
        return 'Partially Authorized';
    }
  }

  const PaymentCollectionStatus(this.value);
}

enum SwapFulfillmentStatus {
  notFulfilled('not_fulfilled'),
  fulfilled('fulfilled'),
  partiallyShipped('partially_shipped'),
  shipped('shipped'),
  canceled('canceled'),
  requiresAction('requires_action');

  final String value;

  @override
  String toString() {
    switch (this) {
      case SwapFulfillmentStatus.notFulfilled:
        return 'Not Fulfilled';
      case SwapFulfillmentStatus.fulfilled:
        return 'Fulfilled';
      case SwapFulfillmentStatus.partiallyShipped:
        return 'Partially Shipped';
      case SwapFulfillmentStatus.shipped:
        return 'Shipped';
      case SwapFulfillmentStatus.canceled:
        return 'Canceled';
      case SwapFulfillmentStatus.requiresAction:
        return 'Requires Action';
    }
  }

  const SwapFulfillmentStatus(this.value);
}

enum PaymentSessionStatus {
  authorized('authorized'),
  pending('pending'),
  requiresMore('requires_more'),
  error('error'),
  canceled('canceled');

  final String value;

  @override
  String toString() {
    switch (this) {
      case PaymentSessionStatus.authorized:
        return 'Authorized';
      case PaymentSessionStatus.pending:
        return 'Pending';
      case PaymentSessionStatus.requiresMore:
        return 'Requires More';
      case PaymentSessionStatus.error:
        return 'Error';
      case PaymentSessionStatus.canceled:
        return 'Canceled';
    }
  }

  const PaymentSessionStatus(this.value);
}

enum ShippingOptionPriceType {
  flatRate('flat_rate'),
  calculated('calculated');

  final String value;

  @override
  String toString() {
    switch (this) {
      case ShippingOptionPriceType.flatRate:
        return 'Flat Rate';
      case ShippingOptionPriceType.calculated:
        return 'Calculated';
    }
  }

  const ShippingOptionPriceType(this.value);
}

enum PriceListType {
  sale('sale'),
  override('override');

  final String value;

  const PriceListType(this.value);
}

enum PriceListStatus {
  active('active'),
  draft('draft');

  final String value;

  const PriceListStatus(this.value);
}

enum OrderEditItemChangeType {
  itemAdd('item_add'),
  itemRemove('item_remove'),
  itemUpdate('item_update');

  final String value;

  @override
  String toString() {
    switch (this) {
      case OrderEditItemChangeType.itemAdd:
        return 'Item Add';
      case OrderEditItemChangeType.itemRemove:
        return 'Item Remove';
      case OrderEditItemChangeType.itemUpdate:
        return 'Item Update';
    }
  }

  const OrderEditItemChangeType(this.value);
}

enum AllocationType {
  total('total'),
  item('item');

  final String value;

  const AllocationType(this.value);
}

enum ClaimPaymentStatus {
  na('na'),
  notRefunded('not_refunded'),
  refunded('refunded');

  final String value;

  @override
  String toString() {
    switch (this) {
      case ClaimPaymentStatus.na:
        return 'NA';
      case ClaimPaymentStatus.notRefunded:
        return 'Not Refunded';
      case ClaimPaymentStatus.refunded:
        return 'Refunded';
    }
  }

  const ClaimPaymentStatus(this.value);
}

enum ClaimFulfillmentStatus {
  notFulfilled('not_fulfilled'),
  partiallyFulfilled('partially_fulfilled'),
  fulfilled('fulfilled'),
  partiallyShipped('partially_shipped'),
  shipped('shipped'),
  partiallyReturned('partially_returned'),
  returned('returned'),
  canceled('canceled'),
  requiresAction('requires_action');

  final String value;
  @override
  String toString() {
    switch (this) {
      case ClaimFulfillmentStatus.notFulfilled:
        return 'Not Fulfilled';
      case ClaimFulfillmentStatus.partiallyFulfilled:
        return 'Partially Fulfilled';
      case ClaimFulfillmentStatus.fulfilled:
        return 'Fulfilled';
      case ClaimFulfillmentStatus.partiallyShipped:
        return 'Partially Shipped';
      case ClaimFulfillmentStatus.shipped:
        return 'Shipped';
      case ClaimFulfillmentStatus.partiallyReturned:
        return 'Partially Returned';
      case ClaimFulfillmentStatus.returned:
        return 'Returned';
      case ClaimFulfillmentStatus.canceled:
        return 'Canceled';
      case ClaimFulfillmentStatus.requiresAction:
        return 'Requires Action';
    }
  }

  const ClaimFulfillmentStatus(this.value);
}

enum ProductStatus {
  draft('draft'),
  proposed('proposed'),
  published('published'),
  rejected('rejected');

  final String value;

  const ProductStatus(this.value);
}

enum CartType {
  defaultType('default'),
  swap('swap'),
  draftOrder('draft_order'),
  paymentLink('payment_link'),
  claim('claim');

  final String value;

  const CartType(this.value);
}

enum DiscountRuleType {
  fixed('fixed'),
  percentage('percentage'),
  freeShipping('free_shipping');

  final String value;

  @override
  String toString() {
    switch (this) {
      case DiscountRuleType.fixed:
        return 'Fixed';
      case DiscountRuleType.percentage:
        return 'Percentage';
      case DiscountRuleType.freeShipping:
        return 'Free Shipping';
    }
  }

  const DiscountRuleType(this.value);
}
