import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final serviceLocator = GetIt.instance;


Future<void> initDependency() async {
  _initAuth();
  serviceLocator
      .registerLazySingleton<PreferenceHelper>(() => PreferenceHelper());
  serviceLocator.registerLazySingleton<Dio>(() => Dio());
}

void _initAuth() {
  //Remote Data store
  serviceLocator
    ..registerFactory<RemoteDataSource>(
      () => RemoteDataSourceImpl(
        serviceLocator(),
      ),
    )
    //repository
    ..registerFactory<Repository>(
      () => RepoImpl(
        serviceLocator(),
      ),
    )
    //usecase
    ..registerFactory(
      () => GetHomePageDataUseCase(
        serviceLocator(),
      ),
    );
    //bloc
    // ..registerLazySingleton(
    //   () => GoogleSignBloc(
    //     googleUsecase: serviceLocator(),
    //     loginusecase: serviceLocator(),
    //     signupUsecase: serviceLocator(),
    //   ),
    // );
}
