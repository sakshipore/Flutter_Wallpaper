import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/services/wallpaper_service.dart';
import 'package:wallpaper/widgets/container_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final WallpaperService _service = WallpaperService();

  // @override
  // void initState() {
  //    _service.fetchWallpaper();
  //   super.initState();
  // }

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
                  spreadRadius: 4,
                  blurrRadius: 5,
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          ContainerBox(
                            height: 30,
                            width: 70,
                            text: "Container",
                            spreadRadius: 3,
                            blurrRadius: 2,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ContainerBox(
                        height: 100,
                        width: 20,
                        text: "",
                        spreadRadius: 2,
                        blurrRadius: 1,
                      );
                    },
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
