import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottery_app/screens/buylotterypage.dart';
import 'package:lottery_app/screens/profilepage.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final controller = CarouselSliderController();
  final urlImages = [
    'https://inseegroup.la/images/Photos/12lasy/12lasycover.jpg',
    'https://inseegroup.la/images/001.jpg',
    'https://inseegroup.la/images/Photos/Lottery/pomotoin1.png',
    'https://inseegroup.la/images/Photos/Lottery/4.jpeg',
    'https://inseegroup.la/images/Photos/Lottery/2.jpeg'
  ];

  // State for loading overlay
  bool _isLoading = false;
  bool _isImageLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 60,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {
            // Show the loader when the button is pressed

            setState(() {
              _isLoading = true;
            });

            // Simulate a delay (like an API call)
            Future.delayed(
              const Duration(seconds: 3),
              () {
                // Hide the loader after 3 seconds
                setState(() {
                  _isLoading = false;
                });

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LotteryPage()));
              },
            );
          },
          backgroundColor: Colors.transparent,
          highlightElevation: 0,
          disabledElevation: 0,
          elevation: 0,
          child: Image.asset(
            'assets/images/go.png',
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.redAccent,
          toolbarHeight: 120,
          title: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8562056656489",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "NotoSansLao",
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              "ຄະແນນສະສົມ 30000 ",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "NotoSansLao",
                              ),
                            ),
                            Text(
                              "(ໃຊ້ພາຍໃນ 48 ຊົ່ວໂມງ)",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontFamily: "NotoSansLao",
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "ສິດໝຸນວົງລໍ້ 0",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "NotoSansLao",
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                      child: const Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.redAccent,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 1),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  _isImageLoading
                      ? Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                          ),
                        )
                      : CarouselSlider.builder(
                          carouselController: controller,
                          itemCount: urlImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImage = urlImages[index];
                            return buildImage(urlImage, index);
                          },
                          options: CarouselOptions(
                            autoPlayInterval: const Duration(seconds: 3),
                            height: double.infinity,
                            viewportFraction: 1,
                            autoPlay: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 300),
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index),
                          ),
                        ),
                  // CarouselSlider.builder(
                  //   carouselController: controller,
                  //   itemCount: urlImages.length,
                  //   itemBuilder: (context, index, realIndex) {
                  //     final urlImage = urlImages[index];
                  //     return buildImage(urlImage, index);
                  //   },
                  //   options: CarouselOptions(
                  //     autoPlayInterval: const Duration(seconds: 3),
                  //     height: double.infinity,
                  //     viewportFraction: 1,
                  //     autoPlay: true,
                  //     autoPlayAnimationDuration:
                  //         const Duration(milliseconds: 300),
                  //     onPageChanged: (index, reason) =>
                  //         setState(() => activeIndex = index),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          buildIndicator(),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildIconWithText(Icons.local_fire_department, 'ຂໍພອນ',
                    const Color(0xffe8dcdc).withOpacity(0.5)),
                buildIconWithText(Icons.sunny, 'ວົງລໍ້ລຸ້ນໂຊກ',
                    const Color(0xffe8dcdc).withOpacity(0.5)),
                buildIconWithText(Icons.group, 'ແນະນຳໝູ່',
                    const Color(0xffe8dcdc).withOpacity(0.5)),
                buildIconWithText(Icons.percent, 'ຄູປອງ',
                    const Color(0xffe8dcdc).withOpacity(0.5)),
                buildIconWithText(Icons.live_tv, 'Live',
                    const Color(0xffe8dcdc).withOpacity(0.5)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
          dotWidth: 15,
          activeDotColor: Colors.redAccent,
          dotColor: Color(0xfff5baba),
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isImageLoading = false; // Stop showing shimmer
      });
    });
  }
}

Widget buildImage(String urlImage, int index) => SizedBox(
    width: double.infinity, child: Image.network(urlImage, fit: BoxFit.cover));

Widget buildIconWithText(IconData icon, String text, Color color) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 25,
        child: Icon(icon, color: Colors.redAccent, size: 30),
      ),
      const SizedBox(height: 8),
      Text(
        text,
        style: const TextStyle(fontSize: 14, fontFamily: "NotoSansLao"),
      ),
    ],
  );
}

// This loading 

    // OverlayLoaderWithAppIcon(
    //   isLoading: _isLoading,
    //   overlayBackgroundColor: Colors.black.withOpacity(0.8),
    //   circularProgressColor: Colors.redAccent,
    //   appIconSize: 50,
    //   appIcon: Image.asset(
    //     'assets/images/go.png',
    //     width: 40,
    //     height: 40,
    //   ),