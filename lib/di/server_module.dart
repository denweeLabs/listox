// ignore_for_file: constant_identifier_names

import 'package:listox/di/env.dart';
import 'package:injectable/injectable.dart';

const API = Named('API');
const ENV = Named('ENV');
const ENV_PREFIX = Named('ENV_PREFIX');

@module
abstract class ServerModule {
  //-------------------------------- Env --------------------------------
  @LazySingleton()
  @ENV
  @Environment(Env.dev)
  String provideEnvDev() {
    return Env.dev;
  }

  @LazySingleton()
  @ENV
  @Environment(Env.prod)
  String provideEnvProd() {
    return Env.prod;
  }

  @LazySingleton()
  @ENV_PREFIX
  @Environment(Env.dev)
  String devEnvPrefix() {
    return 'dev_';
  }

  @LazySingleton()
  @ENV_PREFIX
  @Environment(Env.prod)
  String prodEnvPrefix() {
    return '';
  }


  //-------------------------------- Network config --------------------------------
  // @LazySingleton()
  // @API
  // @Environment(Env.dev)
  // NetworkConfig devNetworkConfig() {
  //   return const NetworkConfig(baseUrl: '');
  // }

  // @LazySingleton()
  // @API
  // @Environment(Env.prod)
  // NetworkConfig prodNetworkConfig() {
  //   return const NetworkConfig(baseUrl: '');
  // }


  //-------------------------------- Request executor --------------------------------
  // @LazySingleton(as: RequestExecutor)
  // @API
  // RequestExecutorImpl requestExecutor(
  //   @API NetworkConfig config,
  //   AccessTokenRepo accessTokenRepo,
  // ) {
  //   return NetworkFactory.create(
  //     config: config,
  //     accessTokenRepo: accessTokenRepo,
  //   );
  // }
}
