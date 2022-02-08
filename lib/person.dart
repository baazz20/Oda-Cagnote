List<Person> persons = <Person>[
  Person(
      name: 'Timothy Altenwerth',
      city: 'East Port Vincechester',
      state: 'Michigan',
      streetAddress: '565359 Fisher Stravenue',
      imageURL:
          'https://raw.githubusercontent.com/watery-desert/assets/main/swipeable_tile/babies/baby1.png',
      message:
          'I heard babies needs more love nowadays. Please hug and kiss me more often.'),
  Person(
      name: 'Fernando Lynch',
      city: 'O\'Konview',
      state: 'Iowa',
      streetAddress: '682698 Bode Flats',
      imageURL:
          'https://raw.githubusercontent.com/watery-desert/assets/main/swipeable_tile/babies/baby2.png',
      message:
          'I wan\'t to sleep more don\'t wake me up. I will stay awake all night I promise.'),
  Person(
      name: 'Astrid Wolff',
      city: 'Davetown',
      state: 'Utah',
      streetAddress: '532429 Willow Ridge',
      imageURL:
          'https://raw.githubusercontent.com/watery-desert/assets/main/swipeable_tile/babies/baby3.png',
      message:
          'What happened? Everyone is alright? I was under the blanket. It was so dark I can\'t believe.'),
  Person(
      name: 'Madison Beier',
      city: 'Ethanside',
      state: 'Hawaii',
      streetAddress: '623190 Lewis Flats',
      imageURL:
          'https://raw.githubusercontent.com/watery-desert/assets/main/swipeable_tile/babies/baby4.png',
      message: 'I can\'t believe how much I am happy to see you.'),
  Person(
      name: 'Josianne Gaylord',
      city: 'Mrazburgh',
      state: 'Iowa',
      streetAddress: '835334 Kuvalis Freeway',
      imageURL:
          'https://raw.githubusercontent.com/watery-desert/assets/main/swipeable_tile/babies/baby5.png',
      message: 'Who wants to play with me? I am ready now.'),
];

class Person {
  final String name;
  final String city;
  final String streetAddress;
  final String state;
  final String imageURL;
  final String message;

  Person({
    required this.name,
    required this.city,
    required this.state,
    required this.streetAddress,
    required this.imageURL,
    required this.message,
  });
}
