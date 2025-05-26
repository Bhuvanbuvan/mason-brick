import 'package:fpdart/fpdart.dart';
import 'package:wcart_vendor/config/core/error/failure.dart';
import 'package:wcart_vendor/config/core/usecase/usercase.dart';
import 'package:wcart_vendor/features/data/model/home_model.dart';

class GetHomePageDataUseCase implements UseCase<VendorModel, String> {
  @override
  Future<Either<Failure, VendorModel>> call(String params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}