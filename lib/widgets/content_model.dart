class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: "Pick your gear from our store\n More than 35 times",
      image: 'assets/camp.png',
      title: 'Select from our\n   Best Option'),
  UnboardingContent(
      description: "Pay on\n cash or online",
      image: 'assets/bag.png',
      title: 'Payment\n Easy Peasy Payment'),
  UnboardingContent(
      description: "Delivery at your\n Door",
      image: 'assets/water-bottle.png',
      title: 'Quick Delivery\n Very Quick')
];
