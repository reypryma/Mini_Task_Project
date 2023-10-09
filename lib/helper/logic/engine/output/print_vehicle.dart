
import '../car.dart';
import '../electric_engine.dart';
import '../petrol_engine.dart';

class VehicleFinal{
  static void combustion(){
    final tank = Tank();
    final oilPipe = OilPipe();
    final piston = Piston();
    final petrolEngine = PetrolEngine(oilPipe: oilPipe, piston: piston);
    final petrolCar = Car<Oil>(engine: petrolEngine, storage: tank);
    final oil = Oil();
    petrolCar.refill(oil);
    petrolCar.accelerate();
    petrolCar.brake();
  }

  static void electricity(){
    //Electric car
    final electrons = Electrons();
    final battery = Battery(electrons);
    final speedController = SpeedController(bms: BatteryManagementSystem(), motor: ElectricMotor());
    final electricEngine = ElectricEngine(speedController);
    final electricCar = Car<Electrons>(engine: electricEngine, storage: battery);
    electricCar.refill(electrons);
    electricCar.accelerate();
    electricCar.brake();
  }
}

void main(){

}


