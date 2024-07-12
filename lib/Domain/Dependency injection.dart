
import '../Data/Repository/Data Source/Home_remote_data_source_impl.dart';
import '../Data/Repository/Repository/Home_Repository_Impl.dart';
import '../Data/api/api_manager.dart';
import 'Repository/Data Source/home_remote_data_source.dart';
import 'Repository/Repository/home_repository_contract.dart';
import 'Use Cases/get_all_products_usecase.dart';

GetAllProductsUseCase injectGetAllProductsUseCase() {
  return GetAllProductsUseCase(
      repositoryContract: injectHomeRepositoryContract());
}
HomeRepositoryContract injectHomeRepositoryContract() {
  return HomeRepositoryImpl(remoteDataSource: injectHomeRemoteDataSource());
}

HomeRemoteDataSource injectHomeRemoteDataSource() {
  return HomeRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}