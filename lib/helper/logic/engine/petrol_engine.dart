import 'interface/engine_interface.dart';
import 'interface/storage_interface.dart';

class PetrolEngine implements EngineInterface {
  OilPipe oilPipe;
  Piston piston;

  PetrolEngine({
    required this.oilPipe,
    required this.piston,
  });

  @override
  void move() {
    final oil = oilPipe.suckOil();
    final energy = oil.burn();
    energy.push(piston);
  }
}

class Piston {
  void move() {}
}

class OilPipe {
  Oil suckOil() {
    return Oil();
  }
}

class Oil {
  Energy burn() {
    // Do some combustion process here
    return Energy();
  }
}

class Energy {
  void push(Piston piston) {
    piston.move();
  }
}

class Tank implements StorageInterface<Oil> {
  late Oil _oil;

  @override
  void fill(Oil source) {
    _oil = source;
  }

  @override
  Oil getSource() {
    return _oil;
  }
}

