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
    print('Car have startEngine');
  }

  @override
  void brake() {
    // TODO: implement brake
    print('Car have startEngine');
  }

  @override
  void startEngine() {
    // TODO: implement startEngine
    print('Car have startEngine');
  }

  @override
  void stopEngine() {
    // TODO: implement stopEngine
    print('Car have startEngine');
  }
}

class Motorcycle extends Vehicle{
  @override
  void accelerate() {
    // TODO: implement accelerate
    print('Motorcycle engine started');
  }

  @override
  void brake() {
    // TODO: implement brake
    print('Motorcycle engine started');
  }

  @override
  void startEngine() {
    // TODO: implement startEngine
    print('Motorcycle engine started');
  }

  @override
  void stopEngine() {
    // TODO: implement stopEngine
    print('Motorcycle engine started');
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