import 'package:dio/dio.dart';


abstract interface class RemoteDataSource {
  //!Home Page Data APi
  Future<VendorModel> getHomePageData();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio dio;

  RemoteDataSourceImpl(this.dio);
  @override
  Future<VendorModel> getHomePageData() {
    return ApiResponseHandler.handleResponse(
      apiCall:
          () => dio.post(
            HttpUrl.appBaseUrl + HttpUrl.homePage,
            data: {
              "vendorid": Singleton.instance.vendorId ?? "",
              "servicekey": Singleton.instance.serviceKey ?? "",
              "store_staff_id": "0",
            },
          ),
      onSuccess: (data) => VendorModel.fromJson(data),
      onError: (message) => VendorModel(status: false),
    );
  }
}
