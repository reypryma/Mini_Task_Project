import 'interface/engine_interface.dart';
import 'interface/storage_interface.dart';

class ElectricEngine implements EngineInterface {
  SpeedController _speedController;

  ElectricEngine(this._speedController);

  @override
  void move() {
    _speedController.control();
  }
}

class SpeedController {
  BatteryManagementSystem bms;
  ElectricMotor motor;

  SpeedController({
    required this.bms,
    required this.motor,
  });

  void control() {
    final battery = bms.getBattery();
    motor.rotate(battery);
  }
}

class BatteryManagementSystem {
  Battery getBattery() {
    return Battery(Electrons());
  }
}

class ElectricMotor {
  void rotate(Battery battery) {
    // Rotate the rotor using electric power from battery
  }
}

class Electrons {}

class Battery implements StorageInterface<Electrons> {
  Electrons _electrons;

  Battery(this._electrons);

  @override
  void fill(Electrons source) {
    _electrons = source;
  }

  @override
  Electrons getSource() {
    return _electrons;
  }
}