import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_store_dispose_test/app/modules/new/new_store.dart';
import 'package:flutter/material.dart';

import '../../app_store.dart';

class NewPage extends StatefulWidget {
  final String title;
  const NewPage({Key? key, this.title = 'NewPage'}) : super(key: key);
  @override
  NewPageState createState() => NewPageState();
}

class NewPageState extends State<NewPage> {
  final NewStore store = Modular.get();
  late final AppStore appStore;

  @override
  void initState() {
    appStore = Modular.get<AppStore>();
    print('On new module: ${appStore.hashCode}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appStore.myValue[0]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.navigate('/');
        },
      ),
      body: Center(
        child: Text('${appStore.hashCode}'),
      ),
    );
  }
}
