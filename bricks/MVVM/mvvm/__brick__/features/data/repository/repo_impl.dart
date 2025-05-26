import 'package:fpdart/fpdart.dart';


class RepoImpl implements Repository{
  final RemoteDataSource remoteDatastore;

  RepoImpl(this.remoteDatastore);
  @override
  Future<Either<Failure, VendorModel>> getHomePageData() async {
    try {
      final VendorModel homePageData = await remoteDatastore.getHomePageData();
      return Right(homePageData);
    } on ServerException catch (e) {
      return left(Failure(e.message.toString()));
    }
  }
}