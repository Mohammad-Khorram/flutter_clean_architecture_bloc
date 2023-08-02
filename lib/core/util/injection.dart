import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store/config/boiler/bloc_boiler.dart';
import 'package:store/config/boiler/network_boiler.dart';
import 'package:store/config/boiler/remote_data_source_boiler.dart';
import 'package:store/config/boiler/repository_boiler.dart';
import 'package:store/config/boiler/usecase_boiler.dart';
import 'package:store/config/boiler/util_boiler.dart';

GetIt injectionInstance = GetIt.instance;
GetIt injectionAsNewInstance = GetIt.asNewInstance();

class InjectionCore {
  static T instance<T extends Object>() {
    return GetIt.instance.get<T>();
  }

  static setupDependencies() {
    // general
    injectionInstance.registerSingleton<ConnectionCore>(ConnectionCore());
    injectionInstance.registerSingleton<SecureStorageCore>(SecureStorageCore());
    injectionInstance.registerSingleton<UserCore>(UserCore());
    injectionInstance.registerSingleton<DioCore>(DioCore(Dio()));
    injectionInstance.registerSingleton<UserCubit>(UserCubit());

    // category
    injectionInstance.registerSingleton<CategoryRemoteDataSource>(CategoryRemoteDataSourceImpl());
    injectionInstance.registerSingleton<CategoryRepository>(CategoryRepositoryImpl(categoryRemoteDataSource: injectionInstance()));
    injectionInstance.registerSingleton<CategoryUseCase>(CategoryUseCase(categoryRepository: injectionInstance()));

    // product
    injectionInstance.registerSingleton<ProductRemoteDataSource>(ProductRemoteDataSourceImpl());
    injectionInstance.registerSingleton<ProductRepository>(ProductRepositoryImpl(productRemoteDataSource: injectionInstance()));
    injectionInstance.registerSingleton<ProductUseCase>(ProductUseCase(productRepository: injectionInstance()));

    // login
    injectionInstance.registerSingleton<LoginRemoteDataSource>(LoginRemoteDataSourceImpl());
    injectionInstance.registerSingleton<LoginRepository>(LoginRepositoryImpl(loginRemoteDataSource: injectionInstance()));
    injectionInstance.registerSingleton<LoginUseCase>(LoginUseCase(loginRepository: injectionInstance()));

    // profile
    injectionInstance.registerSingleton<ProfileRemoteDataSource>(ProfileRemoteDataSourceImpl());
    injectionInstance.registerSingleton<ProfileRepository>(ProfileRepositoryImpl(profileRemoteDataSource: injectionInstance()));
    injectionInstance.registerSingleton<ProfileUseCase>(ProfileUseCase(profileRepository: injectionInstance()));
  }
}
