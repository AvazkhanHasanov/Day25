import 'package:day_25_vazifa/image.dart';
import 'package:day_25_vazifa/utils/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Day25App());
}

class Day25App extends StatelessWidget {
  const Day25App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFFFFFFF),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Reward',
          style: AppStyles.AppbarS,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1E1E1E),
              Color(0xFF2E2E2E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image(),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '1 Ticket Streaming',
                  style: AppStyles.text1,
                ),
                SizedBox(
                  height: 10,
                ),

                Text(
                  '1000 Points',
                  style: AppStyles.text2,
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  spacing: 19,
                  children: [
                    Text(
                      'Match selected',
                      style: AppStyles.text3,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: BoxBorder.all(
                          width: 1,
                          color: Color(
                            0xFFFFFFFF,
                          ).withAlpha((225 * 0.14).toInt()),
                        ),
                        color: Color(
                          0xFFFFFFFF,
                        ).withAlpha((225 * 0.06).toInt()),
                      ),
                      child: ExpansionTile(
                        title: Text(
                          'Select match:',
                          style: AppStyles.text4,
                        ),
                        children: [
                          Text('match1'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Divider(height: 0.4, color: Color(0xFF343434)),
                SizedBox(height: 22),
                Text(
                  'Terms & Conditions',
                  style: AppStyles.text5,
                ),
                SizedBox(height: 12),
                Text(
                  """Leeds were so impressive on their return to the top flight last term, picking up 59 points from 38 matches to claim ninth, just two points behind eighth-place Arsenal and three points behind seventh-place Tottenham Hotspur, and they also ended the campaign in excellent form.""",
                  style: AppStyles.text3,
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFFFFFFFF),
                      backgroundColor: Color(0xFF00A3B7),
                    ),

                    child: Text('Reedem'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
