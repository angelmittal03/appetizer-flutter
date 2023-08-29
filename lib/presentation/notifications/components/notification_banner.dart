import 'package:appetizer/app_theme.dart';
import 'package:appetizer/data/core/theme/dimensional/dimensional.dart';
import 'package:appetizer/presentation/components/app_banner.dart';
import 'package:flutter/material.dart';

class NotificationBanner extends StatelessWidget {
  const NotificationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBanner(
      height: 120.toAutoScaledHeight,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Text(
            "Notifications",
            style: AppTheme.headline1,
          ),
        ],
      ),
      // ),
    );
  }
}
