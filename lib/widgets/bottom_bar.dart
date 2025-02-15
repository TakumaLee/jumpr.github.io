import 'package:flutter/material.dart';

import 'bottom_bar_column.dart';
import 'info_text.dart';
import 'responsive.dart';
import 'dart:js' as js;

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Theme.of(context).bottomAppBarColor,
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 56,
                      child: Center(
                        child: InkWell(
                          child: Text('Privacy Policy',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          onTap: () {
                            js.context.callMethod('open', ['https://jumpr-0923.web.app/privacy.html']);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
                      child: Center(
                        child: InkWell(
                          child: Text('Terms & Conditions',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          onTap: () {
                            js.context.callMethod('open', ['https://jumpr-0923.web.app/TermsOfService.html']);
                          },
                        ),
                      ),
                    ),
                    // BottomBarColumn(
                    //   heading: 'ABOUT',
                    //   s1: 'Contact Us',
                    //   s2: 'About Us',
                    //   s3: 'Careers',
                    // ),
                    // BottomBarColumn(
                    //   heading: 'HELP',
                    //   s1: 'Payment',
                    //   s2: 'Cancellation',
                    //   s3: 'FAQ',
                    // ),
                    // BottomBarColumn(
                    //   heading: 'SOCIAL',
                    //   s1: 'Twitter',
                    //   s2: 'Facebook',
                    //   s3: 'YouTube',
                    // ),
                  ],
                ),
                Container(
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                  height: 1,
                ),
                SizedBox(height: 20),
                InfoText(
                  type: 'Email',
                  text: 'contact.jumpr@gmail.com',
                ),
                // SizedBox(height: 5),
                // InfoText(
                //   type: 'Address',
                //   text: '128, Trymore Road, Delft, MN - 56124',
                // ),
                SizedBox(height: 20),
                Container(
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                  height: 1,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | EXPLORE',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // BottomBarColumn(
                    //   heading: 'ABOUT',
                    //   s1: 'Contact Us',
                    //   s2: 'About Us',
                    //   s3: 'Careers',
                    // ),
                    // BottomBarColumn(
                    //   heading: 'HELP',
                    //   s1: 'Payment',
                    //   s2: 'Cancellation',
                    //   s3: 'FAQ',
                    // ),
                    // BottomBarColumn(
                    //   heading: 'SOCIAL',
                    //   s1: 'Twitter',
                    //   s2: 'Facebook',
                    //   s3: 'YouTube',
                    // ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'contact.jumpr@gmail.com',
                        ),
                        SizedBox(height: 5),
                        // InfoText(
                        //   type: 'Address',
                        //   text: '128, Trymore Road, Delft, MN - 56124',
                        // )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | EXPLORE',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
