import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/lao_icon.png'), // Replace with your flag asset
              radius: 15,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text with Yellow Icon
            const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(width: 10),
                Text(
                  'ຍິນດີຕ້ອນຮັບກັບມາອີກຄັ້ງ!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "NotoSansLao",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Handle "Sign Up" link tap
              },
              child: const Text(
                'ສ້າງບັນຊີ >',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Phone Number Input Section
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'LA',
                        style:
                            TextStyle(fontSize: 16, fontFamily: "NotoSansLao"),
                        selectionColor: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text('+856',
                          style: TextStyle(
                              fontSize: 16, fontFamily: "NotoSansLao")),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    style: const TextStyle(fontFamily: "NotoSansLao"),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'ໃສ່ເບີໂທຂອງທ່ານ',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Password Input
            TextField(
              style: const TextStyle(fontFamily: "NotoSansLao"),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'ໃສ່ລະຫັດຜ່ານ',
                suffixIcon: const Icon(Icons.visibility),
              ),
            ),
            const SizedBox(height: 30),
            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle login
                },
                child: const Text(
                  'ເຂົ້າສູ່ລະບົບ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: "NotoSansLao"),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Forgot Password Link
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle forgot password
                },
                child: const Text(
                  'ລືມລະຫັດຜ່ານ?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "NotoSansLao",
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Bottom Link
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle another bottom link action
                },
                child: const Text(
                  'ສູບບໍລິການລູກຄ້າ',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: "NotoSansLao",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
