import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repository/index.dart';
import 'medusa_admin_config.dart';

class MedusaAdmin {
  MedusaAdmin._({
    required MedusaConfig config,
    required this.authRepository,
    required this.claimRepository,
    required this.collectionRepository,
    required this.customerRepository,
    required this.currencyRepository,
    required this.customerGroupRepository,
    required this.discountRepository,
    required this.discountConditionRepository,
    required this.draftOrderRepository,
    required this.fulfillmentRepository,
    required this.giftCardRepository,
    required this.inventoryItemsRepository,
    required this.inviteRepository,
    required this.noteRepository,
    required this.notificationRepository,
    required this.orderRepository,
    required this.orderEditRepository,
    required this.paymentRepository,
    required this.paymentCollectionRepository,
    required this.priceListRepository,
    required this.productsRepository,
    required this.productTagRepository,
    required this.productTypeRepository,
    required this.productCategoryRepository,
    required this.productVariantRepository,
    required this.publishableApiKeyRepository,
    required this.regionsRepository,
    required this.reservationRepository,
    required this.returnRepository,
    required this.returnReasonRepository,
    required this.salesChannelRepository,
    required this.shippingOptions,
    required this.shippingProfileRepository,
    required this.stockLocationRepository,
    required this.storeRepository,
    required this.swapRepository,
    required this.taxRateRepository,
    required this.uploadRepository,
    required this.userRepository,
  });

  factory MedusaAdmin.initialize(
      {required MedusaConfig config, SharedPreferences? prefs}) {
    final Dio dio = Dio();
    String baseURL = '';
    if (config.baseUrl.endsWith('/admin')) {
      baseURL = config.baseUrl;
    } else {
      baseURL = '${config.baseUrl}/admin';
    }

    dio.options = BaseOptions(baseUrl: baseURL, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    });
    if (config.apiKey != null) {
      dio.options.headers["Authorization"] = "Bearer ${config.apiKey}";
    }

    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      SharedPreferences sharedPreferences =
          prefs ?? await SharedPreferences.getInstance();
      try {
        final String? cookie =
            sharedPreferences.getString('medusa_admin_cookie');
        if (cookie?.isNotEmpty ?? false) {
          options.headers['Cookie'] = cookie;
        }
      } catch (_) {}
      return handler.next(options);
    }));
    if (config.enableDebugging ?? kDebugMode) {
      dio.interceptors.add(LogInterceptor());
    }

    return MedusaAdmin._(
      config: config,
      authRepository: AuthRepository(dio),
      claimRepository: ClaimRepository(dio),
      collectionRepository: CollectionRepository(dio),
      customerRepository: CustomerRepository(dio),
      currencyRepository: CurrencyRepository(dio),
      customerGroupRepository: CustomerGroupRepository(dio),
      discountRepository: DiscountRepository(dio),
      discountConditionRepository: DiscountConditionRepository(dio),
      draftOrderRepository: DraftOrderRepository(dio),
      fulfillmentRepository: FulfillmentRepository(dio),
      giftCardRepository: GiftCardRepository(dio),
      inventoryItemsRepository: InventoryItemsRepository(dio),
      inviteRepository: InviteRepository(dio),
      noteRepository: NoteRepository(dio),
      notificationRepository: NotificationRepository(dio),
      orderRepository: OrdersRepository(dio),
      orderEditRepository: OrderEditRepository(dio),
      paymentRepository: PaymentRepository(dio),
      paymentCollectionRepository: PaymentCollectionRepository(dio),
      priceListRepository: PriceListRepository(dio),
      productsRepository: ProductsRepository(dio),
      productTagRepository: ProductTagRepository(dio),
      productTypeRepository: ProductTypeRepository(dio),
      productCategoryRepository: ProductCategoryRepository(dio),
      productVariantRepository: ProductVariantRepository(dio),
      publishableApiKeyRepository: PublishableApiKeyRepository(dio),
      regionsRepository: RegionsRepository(dio),
      reservationRepository: ReservationRepository(dio),
      returnRepository: ReturnRepository(dio),
      returnReasonRepository: ReturnReasonRepository(dio),
      salesChannelRepository: SalesChannelRepository(dio),
      shippingOptions: ShippingOptionsRepository(dio),
      shippingProfileRepository: ShippingProfileRepository(dio),
      stockLocationRepository: StockLocationRepository(dio),
      storeRepository: StoreRepository(dio),
      swapRepository: SwapRepository(dio),
      taxRateRepository: TaxRateRepository(dio),
      uploadRepository: UploadRepository(dio),
      userRepository: UserRepository(dio),
    );
  }

  final AuthRepository authRepository;
  final ClaimRepository claimRepository;
  final CollectionRepository collectionRepository;
  final CustomerRepository customerRepository;
  final CurrencyRepository currencyRepository;
  final CustomerGroupRepository customerGroupRepository;
  final DiscountRepository discountRepository;
  final DiscountConditionRepository discountConditionRepository;
  final DraftOrderRepository draftOrderRepository;
  final FulfillmentRepository fulfillmentRepository;
  final GiftCardRepository giftCardRepository;
  final InventoryItemsRepository inventoryItemsRepository;
  final InviteRepository inviteRepository;
  final NoteRepository noteRepository;
  final NotificationRepository notificationRepository;
  final OrdersRepository orderRepository;
  final OrderEditRepository orderEditRepository;
  final PaymentRepository paymentRepository;
  final PaymentCollectionRepository paymentCollectionRepository;
  final PriceListRepository priceListRepository;
  final ProductsRepository productsRepository;
  final ProductTagRepository productTagRepository;
  final ProductTypeRepository productTypeRepository;
  final ProductCategoryRepository productCategoryRepository;
  final ProductVariantRepository productVariantRepository;
  final PublishableApiKeyRepository publishableApiKeyRepository;
  final RegionsRepository regionsRepository;
  final ReservationRepository reservationRepository;
  final ReturnRepository returnRepository;
  final ReturnReasonRepository returnReasonRepository;
  final SalesChannelRepository salesChannelRepository;
  final ShippingOptionsRepository shippingOptions;
  final ShippingProfileRepository shippingProfileRepository;
  final StockLocationRepository stockLocationRepository;
  final StoreRepository storeRepository;
  final SwapRepository swapRepository;
  final TaxRateRepository taxRateRepository;
  final UploadRepository uploadRepository;
  final UserRepository userRepository;
}
