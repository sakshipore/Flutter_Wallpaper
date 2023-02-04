import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/widgets/container_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                ContainerBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  text: "",
                ),
                SizedBox(
                  height: 30.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 40.h,
                        child: ContainerBox(
                          height: 30,
                          width: 70,
                          text: "Container",
                        ),
                      );
                    }),
                ContainerBox(
                  height: 30,
                  width: 70,
                  text: "Container 1",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
