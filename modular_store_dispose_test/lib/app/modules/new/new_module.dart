import 'package:modular_store_dispose_test/app/modules/new/new_page.dart';
import 'package:modular_store_dispose_test/app/modules/new/new_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NewStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => NewPage()),
  ];
}
