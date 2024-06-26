class CarouselNews {
  final String title;
  final String imgUrl;

  CarouselNews({
    required this.title,
    required this.imgUrl,
  });
}

List<CarouselNews> carouselNews = [
  CarouselNews(
    title: 'Yacht vs Boat: What\'s the Difference Between the Two?',
    imgUrl:
        'https://iqboatlifts.com/wp-content/uploads/2018/06/Yacht-vs-Boat-Whats-the-Difference-Between-the-Two.jpg',
  ),
  CarouselNews(
    title: '10 Reasons to Buy a Boat Lift',
    imgUrl:
        'https://iqboatlifts.com/wp-content/uploads/2019/08/Decked-6-1024x768.jpg',
  ),
  CarouselNews(
    title: 'Twisted Marine rescues iconic British brand Scorpion RIBs',
    imgUrl:
        'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/18/2024/06/Twisted-Scorpion-920x518.jpg',
  ),
  CarouselNews(
    title: 'Focus Motoryachts teases new 3X boat ideal for bathing',
    imgUrl:
        'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/18/2024/06/3X-920x518.jpg',
  ),
];

class News {
  final String imgUrl;
  final String title;
  final String date;
  final String body;

  News({
    required this.imgUrl,
    required this.title,
    required this.date,
    required this.body,
  });
}

List<News> news = [
  News(
    imgUrl:
        'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/18/2024/06/Twisted-Scorpion-920x518.jpg',
    title: 'Twisted Marine rescues iconic British brand Scorpion RIBs',
    date: '19.06.2024',
    body:
        'In a significant development for the British boating community, Twisted Marine has acquired Scorpion RIBs, a well-known manufacturer of high-performance rigid inflatable boats (RIBs).\n\nThe acquisition follows Scorpion RIBs’ entry into administration earlier this year, ensuring the preservation and continuation of this iconic British brand.\n\nFounded in 1996, Scorpion RIBs has earned a strong reputation for producing advanced and reliable RIBs, holding more endurance and race records than any other manufacturer.\n\nThe company’s future was uncertain after it went into administration in early 2024. However, the acquisition by Twisted Marine will bring renewed stability and optimism to Scorpion’s loyal customer base and RIB enthusiasts worldwide.\n\nCharles Fawcett, Founder of Twisted Automotive and Twisted Marine, commented on the acquisition: “We are excited to bring Scorpion RIBs into the Twisted family. Scorpion RIBs is known for quality, innovation, and performance, which align with our own values. By revitalising Scorpion RIBs, we are preserving a great brand and exploring new opportunities for growth.”',
  ),
  News(
    imgUrl:
        'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/18/2024/06/3X-920x518.jpg',
    title: 'Focus Motoryachts teases new 3X boat ideal for bathing',
    date: '17.06.2024',
    body:
        'Focus Motoryachts’ 3X has a generous full-beam bathing platform, an aft island sun pad and a choice of booth dining amidships.\n\nThe front end of the cockpit provides twin bucket seats, one for the driver on the centreline, and a passenger to port.\n\nThe two long windows on both sides of the cockpit drop down at the touch of a button and the sunroof above slides back, so the cockpit can be opened up to or closed off from the elements as and when required.',
  ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
  // News(
  //   imgUrl: '',
  //   title: '',
  //   date: '',
  //   body: '',
  // ),
];
