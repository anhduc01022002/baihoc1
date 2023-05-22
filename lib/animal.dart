import 'dart:async';

class Dog {
  Future<void> walk() async {
    await Future.delayed(Duration(seconds: 1));
    print('Dog can walk');
  }

  Future<void> wishToFly() async {
    await Future.delayed(Duration(seconds: 1));
    print('Dog: I wish I could fly');
  }
}

class Fish {
  Future<void> swim() async {
    await Future.delayed(Duration(seconds: 1));
    print('Fish can swim');
  }

  Future<void> wishToWalk() async {
    await Future.delayed(Duration(seconds: 1));
    print('Fish: I wish I could walk');
  }
}

class Bird {
  Future<void> fly() async {
    await Future.delayed(Duration(seconds: 1));
    print('Bird can fly');
  }

  Future<void> wishToSwim() async {
    await Future.delayed(Duration(seconds: 1));
    print('Bird: I wish I could swim');
  }
}

class Duck {
  Future<void> walk() async {
    await Future.delayed(Duration(seconds: 1));
    print('Duck can walk');
  }

  Future<void> swim() async {
    await Future.delayed(Duration(seconds: 1));
    print('Duck can swim');
  }

  Future<void> fly() async {
    await Future.delayed(Duration(seconds: 1));
    print('Duck can fly');
  }
}

void main() async {
  Dog dog = Dog();
  await dog.walk();
  await dog.wishToFly();

  Fish fish = Fish();
  await fish.swim();
  await fish.wishToWalk();

  Bird bird = Bird();
  await bird.fly();
  await bird.wishToSwim();

  Duck duck = Duck();
  await duck.walk();
  await duck.swim();
  await duck.fly();
}
