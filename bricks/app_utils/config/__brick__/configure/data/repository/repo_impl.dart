import 'package:fpdart/src/either.dart';
import 'package:wcart_vendor/config/core/error/failure.dart';
import 'package:wcart_vendor/features/domain/repository/repository.dart';
import 'package:wcart_vendor/model/home_model.dart';

class RepoImpl implements Repository{
  @override
  Future<Either<Failure, VendorModel>> getHomePageData() {
    // TODO: implement getHomePageData
    throw UnimplementedError();
  }


}