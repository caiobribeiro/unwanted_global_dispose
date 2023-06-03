import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_store_dispose_test/app/app_store.dart';
import 'package:modular_store_dispose_test/app/modules/new/new_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute('/new', module: NewModule()),
  ];
}
