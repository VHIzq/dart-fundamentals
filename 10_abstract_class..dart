void main() {

  final windPlant = WindPlant(initialEnergy: 13);
  print(windPlant);

  print('Wind: ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { Wind, Solar, Nuclear }

abstract class EnergyPlant {

  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
    });

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant{
  WindPlant({
    required double initialEnergy,
  })
  :super(energyLeft: initialEnergy, type: PlantType.Wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}