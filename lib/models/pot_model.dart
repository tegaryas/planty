class Pot {
  final String imageUrl;
  final String title;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;
  final String sun;
  final String temp;
  final String water;

  Pot({
    this.imageUrl,
    this.title,
    this.name,
    this.category,
    this.price,
    this.size,
    this.description,
    this.sun,
    this.temp,
    this.water,
  });
}

final List<Pot> pots = [
  Pot(
      imageUrl: 'assets/images/plant0.png',
      title: 'Aloe Vera',
      name: 'Aloe Vera',
      category: 'Outdoor',
      price: 500000,
      size: 'Kecil',
      description:
          'Aloe vera is a succulent Pot species of the genus Aloe. It\'s medicinal uses and air purifying ability make it an awesome Pot.',
      sun: '5-9 h',
      temp: '18-25 °C',
      water: 'Setiap 2 Hari'),
  Pot(
    imageUrl: 'assets/images/plant1.png',
    title: 'Monstera',
    name: 'Cool Pot',
    category: 'Indoor',
    price: 400000,
    size: 'Kecil',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur.',
    sun: '5-9 h',
    temp: '18-25 °C',
    water: 'Setiap 2 Hari',
  ),
  Pot(
    imageUrl: 'assets/images/plant2.png',
    title: 'Lavandula angustifolia',
    name: 'Lavandula angustifolia',
    category: 'Outdoor',
    price: 352000,
    size: 'Kecil',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
    sun: '5-9 h',
    temp: '18-25 °C',
    water: 'Setiap 2 Hari',
  ),
  Pot(
    imageUrl: 'assets/images/plant3.png',
    name: 'Monstera Deliciousa',
    title: 'Monstera Deliciousa',
    category: 'Outdoor',
    price: 902000,
    size: 'Besar',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
    sun: '5-9 h',
    temp: '18-25 °C',
    water: 'Setiap 2 Hari',
  ),
];
