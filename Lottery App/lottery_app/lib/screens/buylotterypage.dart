import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../widgets/bottomaddtocart.dart';

class LotteryPage extends StatefulWidget {
  const LotteryPage({super.key});

  @override
  State<LotteryPage> createState() => _LotteryPageState();
}

class _LotteryPageState extends State<LotteryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddtoCard(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDBE00),
        title: const Text('ຫວຍ', style: TextStyle(color: Colors.black)),
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        // Wrap everything in SingleChildScrollView
        child: Column(
          children: [
            // Header section with countdown
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/flutter.png', // Replace with your logo asset
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'ໂຕແທນຈໍາໜ່າຍລາຍຫວຍອອນລາຍໃນລາວ',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'ງວດປະຈໍາວັນພຸດ 02/10/2024\nປິດຮັບພາຍໃນເວລາ:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.red, // พื้นหลังสีแดง
                      borderRadius: BorderRadius.circular(10), // มุมโค้งมน
                    ),
                    child: TimerCountdown(
                      colonsTextStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      descriptionTextStyle: const TextStyle(
                          fontSize: 18,
                          fontFamily: "NotoSansLao",
                          color: Colors.white),
                      timeTextStyle: const TextStyle(
                          fontSize: 24,
                          fontFamily: "NotoSansLao",
                          color: Colors.white),
                      daysDescription: "ວັນ",
                      hoursDescription: "ຊົ່ວໂມງ",
                      minutesDescription: "ນາທີ",
                      secondsDescription: "ວິນາທີ",
                      format: CountDownTimerFormat.daysHoursMinutesSeconds,
                      endTime: DateTime.now().add(
                        const Duration(
                          days: 0,
                          hours: 12,
                          minutes: 00,
                          seconds: 00,
                        ),
                      ),
                      onEnd: () {
                        print("Timer finished");
                      },
                    ),
                  ),
                  // Countdown Timer

                  const SizedBox(height: 16),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 2,
                color: Colors.grey,
              ),
            ),

            // Lottery numbers and result section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    'ງວດປະຈໍາວັນຈັນ 30/09/2024',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildOutlinedCircleNumber('0'),
                      buildOutlinedCircleNumber('3'),
                      buildOutlinedCircleNumber('2'),
                      buildOutlinedCircleNumber('8'),
                      buildOutlinedCircleNumber('1'),
                      buildOutlinedCircleNumber('1'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/images/go.png', // Replace with your image asset
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 8),
                  const Text('ຫມາ',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ],
              ),
            ),

            // Bottom section with number input, amount, and buttons
          ],
        ),
      ),
    );
  }

  // Countdown Tile Wqidget
  Widget _buildCountdownTile(String value, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            value,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }

  // Lottery Number Circle Widget
  Widget buildOutlinedCircleNumber(String number) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2), // ระยะห่างระหว่างวงกลม
      padding: const EdgeInsets.all(10), // ขนาดของวงกลม
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: Colors.amber, width: 2), // สีขอบและความหนาของขอบ
      ),
      child: Text(
        number,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
