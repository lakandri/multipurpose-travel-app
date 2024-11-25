import 'package:flutter/material.dart';
import 'package:ticketing_system/models/support_option.dart';

class SupportRepository {
  List<SupportOption> fetchSupportOptions() {
    return [
      SupportOption(label: 'Call', icon: Icons.phone),
      SupportOption(label: 'WhatsApp', icon: Icons.wechat),
      SupportOption(label: 'Chat', icon: Icons.chat),
      SupportOption(label: 'Viber', icon: Icons.videocam),
      SupportOption(label: 'Email', icon: Icons.email),
    ];
  }
}
