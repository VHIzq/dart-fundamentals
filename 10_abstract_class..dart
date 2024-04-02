void main() {

  final windPlant = WindPlant(initialEnergy: 13);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
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
  final PlantType type;

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

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.Nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}