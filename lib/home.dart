import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Image_list = ['assets/100.svg', 'assets/50.svg', 'assets/25.svg'];
  List couponamount = ['100', '50', '25'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color.fromRGBO(188, 184, 177, 1),
        unselectedItemColor: Color.fromRGBO(188, 184, 177, 1),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              decoration:
                  BoxDecoration(color: Colors.white12, shape: BoxShape.circle),
              child: Padding(
                padding: EdgeInsets.all(0.5.h),
                child: SvgPicture.asset(
                  "assets/Profile.svg",
                  color: Colors.white,
                  height: 5.h,
                  width: 5.w,
                ),
              ),
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.white12, shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: SvgPicture.asset(
                    "assets/message.svg",
                    color: Colors.white,
                    fit: BoxFit.cover,
                    height: 5.h,
                    width: 5.w,
                  ),
                ),
              ),
              label: "Messages"),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.white12, shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: SvgPicture.asset(
                    "assets/home.svg",
                    fit: BoxFit.cover,
                    color: Colors.white,
                    height: 5.h,
                    width: 5.w,
                  ),
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.white12, shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: SvgPicture.asset(
                    "assets/Order list.svg",
                    fit: BoxFit.cover,
                    color: Colors.white,
                    height: 5.h,
                    width: 5.w,
                  ),
                ),
              ),
              label: "Orders"),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.white12, shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: SvgPicture.asset(
                    "assets/track_Icon.svg",
                    color: Colors.white,
                  ),
                ),
              ),
              label: "Track")
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            bannerr(),
            Heading(),
            coupons(),
            Support(),
          ],
        ),
      ),
    );
  }

  Widget bannerr() {
    return Container(
      color: Color.fromRGBO(235, 248, 255, 1),
      height: 25.h,
      child: SvgPicture.asset(
        'assets/top banner.svg',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget Heading() {
    return Container(
      padding: EdgeInsets.only(top: 2.5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Coupon Booking",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Coupon Balance : 75",
                style: TextStyle(
                    color: Color.fromRGBO(
                      178,
                      255,
                      218,
                      1,
                    ),
                    fontSize: 10.sp),
              )
            ],
          ),
          Container(
              width: 85.w,
              child: Divider(
                color: Colors.white,
                height: 0.1.h,
                thickness: 0.4,
              ))
        ],
      ),
    );
  }

  Widget coupons() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Image_list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h, top: 3.5.h),
            child: Container(
              height: 29.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 2.5.h, bottom: 2.5.h),
                    child: SvgPicture.asset(
                      Image_list[index],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        couponamount[index] + " Coupons",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: .5.h),
                          width: 30.w,
                          child: Divider(
                            color: Colors.grey,
                            height: 0.1.h,
                            thickness: 0.4,
                          )),
                      Container(
                        width: 34.w,
                        child: Text(
                          "You can book here for your coupons. And you can pay for it at the next delivery. " +
                              couponamount[index] +
                              " coupons will be added to your account Once it is paid.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.5.h),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 30.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromRGBO(119, 64, 220, 1)),
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget Support() {
    return Container(
      padding: EdgeInsets.only(top: 2.5.h, left: 2.5.h),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Need help?",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(178, 255, 218, 1)),
                ),
                Text("Call Customer Care",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(178, 255, 218, 1))),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.h),
                  height: 6.h,
                  child: Image.asset('assets/telephone-call.png'),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            "assets/help Bottom.svg",
            alignment: Alignment.bottomCenter,
            height: 18.h,
          ),
        ],
      ),
    );
  }
}
