import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/Log_In_Otp_Page.dart';
import 'package:payment_app/loan_request_page/loan_limt_page.dart';
import 'Home.dart';
class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int currentIndex = 0;
  int _selectedIndex = 0;
double slider =0;

  @override
  _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Loan Disbursement",
      "Withdraw to Bank",
      "Loan Repayment",
      "Loan Repayment Fees"
    ];
    List<String> subtitle = [
      "2022-09-12",
      "2022-09-12",
      "2/2/2/22022-09-12",
      "2022-09-12"
    ];
    List<double> trailing = [10050.00, -1050.00, 3050.00, -32.00];
    final controller = useTabController(initialLength: 3);

    return Scaffold(
      backgroundColor: Color(0xffFF0083),
      appBar: AppBar(
        backgroundColor: Color(0xffFF0083),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        title: Text(
          "welcome",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  child: Image.asset("assets/Vector (1).png"),
                ),
                Text("Good afternoon",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                Container(
                  height: 15.h,
                  width: 15.w,
                  child: Image.asset("assets/Vector (2).png"),
                ),
              ],
            ),
          ),
          Text("Jacquie!",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          SizedBox(
            height: 15.h,
          ),
           Center(
            child: Padding(
              padding:  EdgeInsets.only(left: 16.w,right: 16.w),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10.r))),
                height: 130.h,
                width: 320.w,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      height: 65.h,
                      child:Image.asset("assets/side img1.png",fit: BoxFit.cover,) ,
                    ),
                    Container(
                      height: 65.h,
                      child:Image.asset("assets/side img2.png") ,
                    ), Stack(

                      fit: StackFit.loose,
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Positioned(
                          left: 0.w,

                          child: Container(
                            decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10.r))),

                            height: 30.h,
                            child:Image.asset("assets/side.png",fit: BoxFit.fill,) ,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:EdgeInsets.only(left: 26.w,right: 16.w,top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Loan Balance",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w800),),
                          Text("50%",style: TextStyle(color: Colors.white,fontSize: 16.sp),)
                        ],
                      ),
                    ),

                    Positioned(
                      top: 30.h,
                      child: Container(
                        height: 40.h,
                        width:320.w
                        ,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w,right: 16.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$ 30,000.00 Of \$ 30,000.00",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700)),
                              Text("39 Days Left",style: TextStyle(fontSize: 12.sp),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      right: 10.w,

                      child: Container(
                        height: 40.h,
                        width: 150.w
                        ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Repay Loan",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
                            IconButton(
                                onPressed: (){},
                                icon:Icon(Icons.arrow_circle_right_sharp,size: 35.sp,color:Color(0xffFF0083) ,)
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top:60.h,

                      child: Container(
                        height: 40.h,
                        width: 320.w,
                        child:  Slider.adaptive(
                          activeColor: const Color(0xffFF0083),
                          inactiveColor: const Color(0xffFFD6E7),
                          value: slider,
                          onChanged: (newValue) {
                            setState(() {
                              slider = newValue;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Container(
              decoration:
              BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(26.r),
                      topLeft: Radius.circular(26.r))),
              child:
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transactions", style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700,),),
                          Text("See All", style: TextStyle(fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFF0083)))
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text("Mini-Statement"),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300.h,

                      child:
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: title.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left: 20.w,
                                right: 20.w,
                                top: 10.h,
                              ),
                              child: ListTile(
                                title: Text(title[index]),
                                subtitle: Text(subtitle[index]),
                                trailing: Text(
                                  "\$${trailing[index]}".toString(),
                                  style: TextStyle(fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: trailing[index] > 0
                                          ? Colors.green
                                          : Colors.red),),


                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Color(0xffFF0083)),


        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.incomplete_circle),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: "",
          ),

        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  static useTabController({required int initialLength}) {2;}


}



