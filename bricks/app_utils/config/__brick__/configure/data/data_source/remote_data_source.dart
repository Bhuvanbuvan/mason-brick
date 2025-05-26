import 'package:wcart_vendor/features/data/model/home_model.dart';

abstract interface class RemoteDataSource {
 //!Home Page Data APi
  Future<VendorModel> getHomePageData(); 
}


class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<VendorModel> getHomePageData() {
    // TODO: implement getHomePageData
    throw UnimplementedError();
  }  
}