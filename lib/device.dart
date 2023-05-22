import 'dart:async';

class Manufacturer {
  String id;
  String name;

  Manufacturer({required this.id, required this.name});

  static Future<Manufacturer> getManufacturer(String id) async {
    await Future.delayed(Duration(seconds: 1));
    return Manufacturer(id: id, name: "Apple Inc."); 
  }
}

class Device {
  String id;
  String name;
  String systemName;
  Manufacturer manufacturer;

  Device({
    required this.id,
    required this.name,
    required this.systemName,
    required this.manufacturer,
  });

  static Future<Device> getDevice(String id) async {
    await Future.delayed(Duration(seconds: 1));
    Manufacturer manufacturer = await Manufacturer.getManufacturer(id);
    return Device(id: id, name: "iPhone 13", systemName: "iOS", manufacturer: manufacturer);
  }
}

void main() async {
  Device iphone = await Device.getDevice("100");

  print(iphone.name);
  print(iphone.systemName);
  print(iphone.id);
  print(iphone.manufacturer.name);
}
