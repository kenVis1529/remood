import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remood/app/core/values/app_colors.dart';
import 'package:remood/app/core/values/text_style.dart';
import 'package:remood/app/data/models/list_report_point.dart';
import 'package:remood/app/modules/report/report_controller.dart';
import 'package:remood/app/modules/report/widgets/button.dart';
import 'package:remood/app/modules/report/widgets/mood_percentage.dart';

import 'package:remood/app/modules/report/widgets/show_date.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReportController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    ListReportPoint hiveBox = ListReportPoint();
    /* @override
    void initState() {
    if (_mybox.get("listreportpoint") == null) {
        hiveBox.createInitialize();
      } else {
        hiveBox.loadData();
      }
      super.initState();
    }*/

    return Scaffold(
      backgroundColor: AppColors.backgroundPage,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                // Heading
                Text(
                  "Report",
                  style: CustomTextStyle.reportHeading(),
                ),

                // The date show data
                ShowDate(controller: controller),
              ],
            ),

            SizedBox(
              height: screenHeight * 0.09,
            ),

            // Mood percentage of the day
            MoodPercentage(
              controller: controller,
            ),

            SizedBox(
              height: screenHeight * 0.145,
            ),
            const Button(),
          ],
        ),
      ),
    );
  }
}
