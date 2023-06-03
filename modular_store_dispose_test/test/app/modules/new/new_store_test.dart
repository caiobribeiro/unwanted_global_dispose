import 'package:flutter_test/flutter_test.dart';
import 'package:modular_store_dispose_test/app/modules/new/new_store.dart';
 
void main() {
  late NewStore store;

  setUpAll(() {
    store = NewStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}