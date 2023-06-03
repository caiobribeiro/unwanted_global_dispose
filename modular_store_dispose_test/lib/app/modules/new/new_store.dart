import 'package:mobx/mobx.dart';

part 'new_store.g.dart';

class NewStore = _NewStoreBase with _$NewStore;
abstract class _NewStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}