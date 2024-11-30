import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/loan_request_page/Home.dart';
import 'package:payment_app/loan_request_page/Home2.dart';

class LoanLimtPage extends StatefulWidget {
  const LoanLimtPage({super.key});

  @override
  State<LoanLimtPage> createState() => _LoanLimtPageState();
}

class _LoanLimtPageState extends State<LoanLimtPage> {
  double slider = 0;
  double slider_2 = 0;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    List<String> PayMent = ["NIL", "NIL", "NIL"];
    List<String> PayMentList = [
      "Monthly\nPayment",
      "No Of\nPaymet",
      "Total\nPayback"
    ];
    List<String> TransactionsList = [
      "Next Repayment Date:",
      "Interest Rate:",
      "Monthly Repayment:",
      "No of Payments:",
      "Reason:",
      "Total Payback Amount:"
    ];
    List<String> TransactionsAmount = [
      "02/04/2023",
      "10 %",
      "\$5,000.00",
      "2",
      "Emergency Bills",
      "\$ 10,050.00"
    ];
    return Scaffold(
      backgroundColor: const Color(0xffFF0083),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF0083),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
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
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
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
              SizedBox(
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
        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Container(
            height: 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "please choose your limit?",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text("\$${(slider * 10000).round()}",
                    style: TextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.w800)),
                Slider.adaptive(
                  activeColor: const Color(0xffFF0083),
                  inactiveColor: const Color(0xffFFD6E7),
                  value: slider,
                  onChanged: (newValue) {
                    setState(() {
                      slider = newValue;
                    });
                  },
                ),
                Text("choose your limit to use for loan or overdraft of upto ",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500)),
                SizedBox(
                  height: 10.h,
                ),
                Text("\$5,000.00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFF0083))),
                Text("How long do you want the loan for?",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: const Color(0xffFF0083),
                      minimumSize: Size(300.w, 45.h)),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        barrierColor: Colors.black87,
                        backgroundColor: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.r),
                              topRight: Radius.circular(30.r)),
                        ),
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context,
                                void Function(void Function()) setState) {
                              return SizedBox(
                                height: 400.h,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text("How long do you want the loan for?",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text("${(slider_2 * 12).round()} Month",
                                        style: TextStyle(
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w800,
                                        )),
                                    Slider.adaptive(
                                      activeColor: const Color(0xffFF0083),
                                      inactiveColor: const Color(0xffFFD6E7),
                                      value: slider_2,
                                      onChanged: (newValue) {
                                        setState(() {
                                          slider_2 = newValue;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.w, right: 16.w),
                                      child: Container(
                                          height: 100.h,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade100,
                                                  blurRadius: 3.r,
                                                  spreadRadius: 3.r,
                                                )
                                              ]),
                                          width: double.infinity,
                                          child: ListView.builder(
                                              itemCount: PayMentList.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 40.w),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(PayMentList[index],style: TextStyle(fontSize: 14.sp),),
                                                      Text(
                                                        PayMent[index],
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 20.sp,
                                                            color: Color(
                                                                0xffC5C5C5)),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              })),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Checkbox(
                                          tristate: false,
                                          // Example with intrastate
                                          value: _value,
                                          onChanged: (bool? Value) {
                                            setState(() {
                                              _value = Value!;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        RichText(
                                            text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "I agree to the ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp,
                                                    fontFamily: "Poppins",
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: "Terms & Conditions ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp,
                                                    fontFamily: "Poppins",
                                                    color: Colors.red)),
                                            TextSpan(
                                                text: "and ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp,
                                                    fontFamily: "Poppins",
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: "Policy.",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp,
                                                    fontFamily: "Poppins",
                                                    color: Colors.red))
                                          ],
                                        ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 5,
                                            backgroundColor: _value == false
                                                ? Colors.grey
                                                : Color(0xffFF0083),
                                            minimumSize: Size(300.w, 45.h)),
                                        onPressed: () {
                                          _value == false
                                              ? null
                                              : showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return SingleChildScrollView(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        30.r),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        30.r))),
                                                        width: double.infinity,
                                                        height: 600.h,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 15.h,
                                                            ),
                                                            Text(
                                                              "That was way to easy!",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize:
                                                                      14.sp),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                                "Congratulations!",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    fontSize:
                                                                        24.sp)),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              color: Colors
                                                                  .green
                                                                  .shade100,
                                                              size: 100.sp,
                                                            ),
                                                            SizedBox(
                                                                height: 30.h),
                                                            Text(
                                                                "Transaction Summary",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        16.sp)),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          30.w,
                                                                      right:
                                                                          30.w),
                                                              child: Container(
                                                                color: Colors
                                                                    .grey
                                                                    .shade100,
                                                                height: 180.h,
                                                                width: double
                                                                    .infinity,
                                                                child: ListView
                                                                    .builder(
                                                                        physics:
                                                                            NeverScrollableScrollPhysics(),
                                                                        itemCount:
                                                                            TransactionsList
                                                                                .length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsets.only(
                                                                                  left: 10.w,top: 10.h
                                                                                ),
                                                                                child: Text(
                                                                                  TransactionsList[index],
                                                                                  style: const TextStyle(color: Colors.grey),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding:  EdgeInsets.only(right: 10.w,top: 10.h),
                                                                                child: Text( TransactionsAmount[index]),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        }),
                                                              ),
                                                            ),
                                                            Divider(
                                                              thickness: 1,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            ElevatedButton(
                                                                style: ElevatedButton.styleFrom(
                                                                    elevation:
                                                                        5,
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0xffFF0083),
                                                                    minimumSize:
                                                                        Size(
                                                                            300.w,
                                                                            45.h)),
                                                                onPressed: () {
                                                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
                                                                    return Home2();
                                                                  }),(r)
                                                                  { return false;});
                                                                },
                                                                child: Text(
                                                                  "Accept",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17.sp,
                                                                      fontFamily:
                                                                          "Poppins",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                            SizedBox(
                                                              height: 20.h,
                                                            ),
                                                            ElevatedButton(
                                                                style: ElevatedButton.styleFrom(
                                                                    elevation:
                                                                        5,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .black,
                                                                    minimumSize:
                                                                        Size(
                                                                            300.w,
                                                                            45.h)),
                                                                onPressed: () {
                                                                  Navigator.pushAndRemoveUntil(
                                                                      context,
                                                                      MaterialPageRoute(builder:
                                                                          (BuildContext
                                                                              context) {
                                                                    return Home();
                                                                  }), (r) {
                                                                    return false;
                                                                  });
                                                                },
                                                                child: Text(
                                                                  "Decline",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17.sp,
                                                                      fontFamily:
                                                                          "Poppins",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  });
                                        },
                                        child: Text("Apply Now",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white)))
                                  ],
                                ),
                              );
                            },
                          );
                        });
                  },
                  child: Text("Submit",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
