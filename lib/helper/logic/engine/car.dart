

import 'interface/engine_interface.dart';
import 'interface/storage_interface.dart';
import 'interface/vehicle_interface.dart';

class Car<T> implements Vehicle<T> {
  EngineInterface? engine;
  StorageInterface<T> storage;

  Car({
    required this.engine,
    required this.storage,
  });

  @override
  void accelerate() {
    engine?.move();
  }

  @override
  void brake() {
  }

  @override
  void refill(T source) {
    storage.fill(source);
  }
}