import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repository/index.dart';
import 'medusa_admin_config.dart';

class MedusaAdmin {
  final Dio _dio = Dio();

  MedusaAdmin(Config config) {
    _setupApiClient(config);
    authRepository = AuthRepository(_dio);
    claimRepository = ClaimRepository(_dio);
    collectionRepository = CollectionRepository(_dio);
    customerRepository = CustomerRepository(_dio);
    currencyRepository = CurrencyRepository(_dio);
    customerGroupRepository = CustomerGroupRepository(_dio);
    discountRepository = DiscountRepository(_dio);
    discountConditionRepository = DiscountConditionRepository(_dio);
    draftOrderRepository = DraftOrderRepository(_dio);
    fulfillmentRepository = FulfillmentRepository(_dio);
    giftCardRepository = GiftCardRepository(_dio);
    inventoryItemsRepository = InventoryItemsRepository(_dio);
    inviteRepository = InviteRepository(_dio);
    noteRepository = NoteRepository(_dio);
    notificationRepository = NotificationRepository(_dio);
    orderRepository = OrdersRepository(_dio);
    orderEditRepository = OrderEditRepository(_dio);
    paymentRepository = PaymentRepository(_dio);
    paymentCollectionRepository = PaymentCollectionRepository(_dio);
    priceListRepository = PriceListRepository(_dio);
    productsRepository = ProductsRepository(_dio);
    productTagRepository = ProductTagRepository(_dio);
    productTypeRepository = ProductTypeRepository(_dio);
    productCategoryRepository = ProductCategoryRepository(_dio);
    productVariantRepository = ProductVariantRepository(_dio);
    publishableApiKeyRepository = PublishableApiKeyRepository(_dio);
    regionsRepository = RegionsRepository(_dio);
    reservationRepository = ReservationRepository(_dio);
    returnRepository = ReturnRepository(_dio);
    returnReasonRepository = ReturnReasonRepository(_dio);
    salesChannelRepository = SalesChannelRepository(_dio);
    shippingOptions = ShippingOptionsRepository(_dio);
    shippingProfileRepository = ShippingProfileRepository(_dio);
    stockLocationRepository = StockLocationRepository(_dio);
    storeRepository = StoreRepository(_dio);
    swapRepository = SwapRepository(_dio);
    taxRateRepository = TaxRateRepository(_dio);
    uploadRepository = UploadRepository(_dio);
    userRepository = UserRepository(_dio);
  }

  late AuthRepository authRepository;
  late ClaimRepository claimRepository;
  late CollectionRepository collectionRepository;
  late CustomerRepository customerRepository;
  late CurrencyRepository currencyRepository;
  late CustomerGroupRepository customerGroupRepository;
  late DiscountRepository discountRepository;
  late DiscountConditionRepository discountConditionRepository;
  late DraftOrderRepository draftOrderRepository;
  late FulfillmentRepository fulfillmentRepository;
  late GiftCardRepository giftCardRepository;
  late InventoryItemsRepository inventoryItemsRepository;
  late InviteRepository inviteRepository;
  late NoteRepository noteRepository;
  late NotificationRepository notificationRepository;
  late OrdersRepository orderRepository;
  late OrderEditRepository orderEditRepository;
  late PaymentRepository paymentRepository;
  late PaymentCollectionRepository paymentCollectionRepository;
  late PriceListRepository priceListRepository;
  late ProductsRepository productsRepository;
  late ProductTagRepository productTagRepository;
  late ProductTypeRepository productTypeRepository;
  late ProductCategoryRepository productCategoryRepository;
  late ProductVariantRepository productVariantRepository;
  late PublishableApiKeyRepository publishableApiKeyRepository;
  late RegionsRepository regionsRepository;
  late ReservationRepository reservationRepository;
  late ReturnRepository returnRepository;
  late ReturnReasonRepository returnReasonRepository;
  late SalesChannelRepository salesChannelRepository;
  late ShippingOptionsRepository shippingOptions;
  late ShippingProfileRepository shippingProfileRepository;
  late StockLocationRepository stockLocationRepository;
  late StoreRepository storeRepository;
  late SwapRepository swapRepository;
  late TaxRateRepository taxRateRepository;
  late UploadRepository uploadRepository;
  late UserRepository userRepository;

  void _setupApiClient(Config config) {
    _dio.options = BaseOptions(baseUrl: config.baseUrl, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    });
    if (config.apiKey != null) {
      _dio.options.headers["Authorization"] = "Bearer ${config.apiKey}";
    }

    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? cookie = prefs.getString('Cookie');
      if (cookie?.isNotEmpty ?? false) {
        options.headers['Cookie'] = cookie;
      }
      return handler.next(options);
    }));
    if (config.enableDebugging ?? kDebugMode) {
      _dio.interceptors.add(LogInterceptor());
    }
  }
}
