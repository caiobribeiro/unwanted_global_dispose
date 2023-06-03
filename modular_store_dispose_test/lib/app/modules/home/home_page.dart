import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_store_dispose_test/app/app_store.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;
  late final AppStore appStore;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
    appStore = Modular.get<AppStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appStore.myValue[0]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.navigate('/new');
        },
      ),
      body: Center(
        child: Text('${appStore.hashCode}'),
      ),
    );
  }
}
