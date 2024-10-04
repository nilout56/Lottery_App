import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          // shadowColor: Colors.grey,
          backgroundColor: Colors.redAccent,
          elevation: 1.0,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(15),
          //   ),
          // ),
          title: const Text("ບັນຊີຜູ້ໃຊ້",
              style: TextStyle(
                // color: Color(0xFF000000),
                fontSize: 20,
                fontWeight: FontWeight.bold, fontFamily: 'NotoSansLao',
              )),
          centerTitle: true,
        ),
      ),
      body: const Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.redAccent,
                  ),
                  SizedBox(width: 10),
                  Column(
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
                      Text(
                        "ຄະແນນສະສົມ 30000 ",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "NotoSansLao",
                        ),
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
