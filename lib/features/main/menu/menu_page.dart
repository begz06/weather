import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*05,
      
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.grey.shade400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Hourly Forecast',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Weekly Forecast',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 175,
            child: ListView.separated(
              itemCount: 15,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    print('ok');
                  },
                  child: Container(
                    height: 146,
                    decoration: BoxDecoration(
                        color: Color(0xff5936B4),
                        borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [

                          ],
                        ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
