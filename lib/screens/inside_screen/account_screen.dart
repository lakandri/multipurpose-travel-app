import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: primaryBgColor,
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: primaryBgColor,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "Sign-in or Sign-up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle("My Account"),
            _buildOption(Icons.account_balance_wallet, "My TT Coins"),
            _buildOption(Icons.local_offer, "Promo codes"),
            _buildOption(Icons.card_giftcard, "Vouchers"),
            const SizedBox(height: 20),
            _buildSectionTitle("Information"),
            _buildOption(Icons.info, "About Trip Turbo"),
            _buildOption(Icons.rate_review, "Reviews"),
            _buildOption(Icons.privacy_tip, "Privacy Policy"),
            _buildOption(Icons.rule, "Terms and conditions"),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, color: primaryBgColor),
      title: Text(
        label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
