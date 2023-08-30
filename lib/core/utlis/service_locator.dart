import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mybookly/Features/home/Data/repos/home_repo_impl.dart';
import 'package:mybookly/core/utlis/api_service.dart';

final getIt = GetIt.instance;
void setup(){
getIt.registerSingleton<ApiService>(ApiService(Dio()));
getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));


}
