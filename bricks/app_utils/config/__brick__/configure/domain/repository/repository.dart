
import 'package:fpdart/fpdart.dart';
import 'package:wcart_vendor/config/core/error/failure.dart';
import 'package:wcart_vendor/model/home_model.dart';

abstract interface class Repository {
  Future<Either<Failure, VendorModel>> getHomePageData();
}