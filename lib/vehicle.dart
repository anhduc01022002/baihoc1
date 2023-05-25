abstract class Vehicle{
  void startEngine();
  void stopEngine();
  void accelerate();
  void brake();
}

class Car extends Vehicle{
  @override
  void accelerate() {
    // TODO: implement accelerate
    print('Car have accelerate');
  }

  @override
  void brake() {
    // TODO: implement brake
    print('Car have brake');
  }

  @override
  void startEngine() {
    // TODO: implement startEngine
    print('Car have startEngine');
  }

  @override
  void stopEngine() {
    // TODO: implement stopEngine
    print('Car have stopEngine');
  }
}

class Motorcycle extends Vehicle{
  @override
  void accelerate() {
    // TODO: implement accelerate
    print('Motorcycle have accelerate');
  }

  @override
  void brake() {
    // TODO: implement brake
    print('Motorcycle have brake');
  }

  @override
  void startEngine() {
    // TODO: implement startEngine
    print('Motorcycle engine started');
  }

  @override
  void stopEngine() {
    // TODO: implement stopEngine
    print('Motorcycle engine stopped');
  }

}

void main() {
  Car myCar = Car();
  myCar.startEngine();
  myCar.accelerate();
  myCar.brake();
  myCar.stopEngine();

  Motorcycle myMotorcycle = Motorcycle();
  myMotorcycle.startEngine();
  myMotorcycle.accelerate();
  myMotorcycle.brake();
  myMotorcycle.stopEngine();
}