import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List name = [
    "Suyash Mehta",
    "Magento NFTs",
    "Param Kumar",
    "Suyash Mehta",
    "Magento NFTs",
    "Suyash Mehta",
    "Suyash Mehta",
    "Magento NFTs",
    "Suyash Mehta"
  ];
  List images = [
    "assets/images/bullavatar.png",
    "assets/images/turtleavatar.png",
    "assets/images/donkeyavatar.png",
    "assets/images/bullavatar.png",
    "assets/images/turtleavatar.png",
    "assets/images/bullavatar.png",
    "assets/images/bullavatar.png",
    "assets/images/bullavatar.png",
    "assets/images/bullavatar.png"
  ];
  List nfts = [
    "1.230",
    "11.305",
    "5.914",
    "1.230",
    "11.305",
    "5.914",
    "1.230",
    "11.305",
    "5.914"
  ];
  List percent = [
    "+20.30%",
    "+18.70%",
    "13.20%",
    "+20.30%",
    "+18.70%",
    "13.20%",
    "+20.30%",
    "+18.70%",
    "13.20%"
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Widget categorycard(
        String image1, String image2, String image3, String title) {
      return Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          //color: Colors.amber.withOpacity(0.1),
          width: w * 0.258,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 0.236 * w,
                child: Stack(
                  children: [
                    Positioned(
                        left: 0,
                        bottom: 0,
                        child: Image.asset(
                          image1,
                          width: w * 0.1,
                          height: w * 0.1567,
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                          image2,
                          width: w * 0.1,
                          height: w * 0.1567,
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        bottom: 0,
                        left: w * 0.0625,
                        child: Image.asset(
                          image3,
                          width: w * 0.13,
                          height: w * 0.1823,
                          fit: BoxFit.fill,
                        )),
                  ],
                ),
              ),
              Container(
                color: HexColor("#DEECFB"),
                width: double.infinity,
                height: 84,
                child: Center(
                    child: Text(
                  title,
                  style: GoogleFonts.montserrat(
                      fontSize: 26, fontWeight: FontWeight.w600),
                )),
              )
            ],
          ),
        ),
      );
    }

    //print("height is $h and width is $w");
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0.07813 * w, right: 0.07813 * w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.0308 * h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 0.013 * w,
                          backgroundColor: HexColor("#2081E2"),
                          child: Image.asset(
                            "assets/images/boat.png",
                            width: 0.01042 * w,
                            height: 0.01042 * w,
                          ),
                        ),
                        SizedBox(
                          width: 0.00625 * w,
                        ),
                        SizedBox(
                          width: 0.0656 * w,
                          height: 0.0398 * h,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text("OpenSea",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          width: 0.062 * w,
                        ),
                        SizedBox(
                          //height: 0.02623 * h,
                          width: 0.0458 * w,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text("Explore",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#2081E2"))),
                          ),
                        ),
                        SizedBox(
                          width: 0.028 * w,
                        ),
                        SizedBox(
                          //height: 0.02656 * h,
                          width: 0.02656 * w,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text("Stats",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#000000"))),
                          ),
                        ),
                        SizedBox(
                          width: 0.02812 * w,
                        ),
                        SizedBox(
                          //height: 0.02656 * h,
                          width: 0.05468 * w,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text("Resouces",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#000000"))),
                          ),
                        ),
                        SizedBox(
                          width: 0.02812 * w,
                        ),
                        SizedBox(
                          //height: 0.02656 * h,
                          width: 0.0349 * w,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text("Create",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#000000"))),
                          ),
                        ),
                        SizedBox(width: 0.03 * w),
                        Container(
                          width: 0.2 * w,
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: HexColor("#F5F5F5")),
                          child: Row(
                            children: [Icon(Icons.search), Text("Search")],
                          ),
                        ),
                        SizedBox(
                          width: 0.032 * w,
                        ),
                        Container(
                          width: 0.1078 * w,
                          height: 42,
                          child: Center(
                            child: Text(
                              "Connect Wallet",
                              style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: HexColor("#2081E2")),
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/profileicon.png",
                          width: w * 0.0177,
                        ),
                      ],
                    ),
                    SizedBox(height: 107),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 0.3312 * w,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Discover, collect,",
                                      style: GoogleFonts.montserrat(
                                          //fontSize: 65,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "And sell Awesome ",
                                      style: GoogleFonts.montserrat(
                                          //fontSize: 65,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "NFTs",
                                      style: GoogleFonts.montserrat(
                                          //fontSize: 65,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor("#2081E2")),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            SizedBox(
                              width: 0.3411 * w,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "OpenSea is the world's first and largest",
                                      style: GoogleFonts.roboto(
                                          color: HexColor("#6D6D6D")),
                                    ),
                                    Text("NFT marketplace",
                                        style: GoogleFonts.roboto(
                                            color: HexColor("#6D6D6D")))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 58,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 0.11 * w,
                                  height: 50,
                                  child: Center(
                                      child: Text("Explore",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white))),
                                  decoration: BoxDecoration(
                                      color: HexColor("#2081E2"),
                                      borderRadius: BorderRadius.circular(7)),
                                ),
                                SizedBox(width: 0.0245 * w),
                                Container(
                                  width: 0.11 * w,
                                  height: 50,
                                  child: Center(
                                      child: Text("Create",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: HexColor("#2081E2")))),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                          color: HexColor("#2081E2"))),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: w * 0.1921),
                        Container(
                          color: Colors.white,
                          width: 0.3036 * w,
                          height: 400,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 0.0333 * w, right: 0.0333 * w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 17,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 38,
                                      width: 0.034 * w,
                                      // child: Image.asset(
                                      //   "assets/images/profileavatar.png",
                                      //   fit: BoxFit.fill,
                                      // ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              top: 25,
                                              right: w * 0.00156,
                                              child: Image.asset(
                                                "assets/images/verifiedcheckblue.png",
                                                width: w * 0.009,
                                              ))
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: HexColor("#75BAFF"),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/profileavatar.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox(width: w * 0.0193),
                                    SizedBox(
                                      width: w * 0.09,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          "NFT Collector",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/images/pluto905.png",
                                  width: 0.24 * w,
                                  height: 260,
                                  //fit: BoxFit.fitWidth,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 0.041 * w,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          "Name",
                                          style: GoogleFonts.montserrat(
                                              color: HexColor("#AAAAAA")),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      width: w * 0.03437,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          "Price",
                                          style: GoogleFonts.montserrat(
                                              color: HexColor("#AAAAAA")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: w * 0.1,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          "Pluto #905",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 25,
                                              color: HexColor("#000000")),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/images/diamond.png",
                                      width: 0.0125 * w,
                                      height: 22,
                                    ),
                                    Text(
                                      "1.2",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 25,
                                          color: HexColor("#000000")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 67.5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Live Auction",
                        style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 43),
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: w * 0.24,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 0.025 * w,
                                        right: 0.025 * w,
                                        top: w * 0.025),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 0.178 * w,
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: w * 0.011,
                                                  right: w * 0.011),
                                              child: CircleAvatar(
                                                radius: w * 0.0156,
                                                backgroundColor: Colors.black
                                                    .withOpacity(0.4),
                                                child: Image.asset(
                                                  "assets/images/heartwhite.png",
                                                  width: w * 0.0156,
                                                ),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      "assets/images/monkey.png"))),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: w * 0.02,
                                              height: w * 0.02,
                                              child: Image.asset(
                                                "assets/images/profileavatarbackg.png",
                                                fit: BoxFit.fill,
                                              ),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: HexColor("#75BAFF")),
                                            ),
                                            SizedBox(
                                              width: w * 0.005,
                                            ),
                                            SizedBox(
                                              width: w * 0.08,
                                              child: Text(
                                                "NFT Collector",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              width: w * 0.085,
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "2 Days 7 Hrs ",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: HexColor(
                                                                  "#2081E2"),
                                                              fontSize: 11),
                                                      children: [
                                                    TextSpan(
                                                        text: "Left",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 11,
                                                                color: HexColor(
                                                                    "#000000")))
                                                  ])),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        SizedBox(
                                            width: w * 0.1857,
                                            child: Text(
                                              "Cyubaking #1762",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            )),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width: w * 0.09,
                                                  child: Text(
                                                    "Current Bid",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: HexColor(
                                                                "#6D6D6D"),
                                                            fontSize: 11),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/bluediamond.png",
                                                      width: w * 0.00729,
                                                    ),
                                                    SizedBox(
                                                      width: w * 0.09,
                                                      child: Text(
                                                        "1.230",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                                color: HexColor(
                                                                    "#2081E2")),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              width: w * 0.078,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: HexColor("#2081E2"),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Center(
                                                child: Text(
                                                  "Place a bid",
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.037,
                              ),
                              Card(
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: w * 0.24,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 0.025 * w,
                                        right: 0.025 * w,
                                        top: w * 0.025),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 0.178 * w,
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: w * 0.011,
                                                  right: w * 0.011),
                                              child: CircleAvatar(
                                                radius: w * 0.0156,
                                                backgroundColor: Colors.black
                                                    .withOpacity(0.4),
                                                child: Image.asset(
                                                  "assets/images/heartwhite.png",
                                                  width: w * 0.0156,
                                                ),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      "assets/images/cat.png"))),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: w * 0.02,
                                              height: w * 0.02,
                                              child: Image.asset(
                                                "assets/images/profileavatarbackg.png",
                                                fit: BoxFit.fill,
                                              ),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: HexColor("#75BAFF")),
                                            ),
                                            SizedBox(
                                              width: w * 0.005,
                                            ),
                                            SizedBox(
                                              width: w * 0.08,
                                              child: Text(
                                                "NFT Collector",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              width: w * 0.085,
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "2 Days 7 Hrs ",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: HexColor(
                                                                  "#2081E2"),
                                                              fontSize: 11),
                                                      children: [
                                                    TextSpan(
                                                        text: "Left",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 11,
                                                                color: HexColor(
                                                                    "#000000")))
                                                  ])),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        SizedBox(
                                            width: w * 0.1857,
                                            child: Text(
                                              "Retz #03",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            )),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width: w * 0.09,
                                                  child: Text(
                                                    "Current Bid",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: HexColor(
                                                                "#6D6D6D"),
                                                            fontSize: 11),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/bluediamond.png",
                                                      width: w * 0.00729,
                                                    ),
                                                    SizedBox(
                                                      width: w * 0.09,
                                                      child: Text(
                                                        "1.230",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                                color: HexColor(
                                                                    "#2081E2")),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              width: w * 0.078,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: HexColor("#2081E2"),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Center(
                                                child: Text(
                                                  "Place a bid",
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.037,
                              ),
                              Card(
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: w * 0.24,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 0.025 * w,
                                        right: 0.025 * w,
                                        top: w * 0.025),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 0.178 * w,
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: w * 0.011,
                                                  right: w * 0.011),
                                              child: CircleAvatar(
                                                radius: w * 0.0156,
                                                backgroundColor: Colors.black
                                                    .withOpacity(0.4),
                                                child: Image.asset(
                                                  "assets/images/heartwhite.png",
                                                  width: w * 0.0156,
                                                ),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      "assets/images/robot.png"))),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: w * 0.02,
                                              height: w * 0.02,
                                              child: Image.asset(
                                                "assets/images/profileavatarbackg.png",
                                                fit: BoxFit.fill,
                                              ),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: HexColor("#75BAFF")),
                                            ),
                                            SizedBox(
                                              width: w * 0.005,
                                            ),
                                            SizedBox(
                                              width: w * 0.08,
                                              child: Text(
                                                "NFT Collector",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              width: w * 0.085,
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "2 Days 7 Hrs ",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: HexColor(
                                                                  "#2081E2"),
                                                              fontSize: 11),
                                                      children: [
                                                    TextSpan(
                                                        text: "Left",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 11,
                                                                color: HexColor(
                                                                    "#000000")))
                                                  ])),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        SizedBox(
                                            width: w * 0.1858,
                                            child: Text(
                                              "RobotMola",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            )),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width: w * 0.09,
                                                  child: Text(
                                                    "Current Bid",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: HexColor(
                                                                "#6D6D6D"),
                                                            fontSize: 11),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/bluediamond.png",
                                                      width: w * 0.00729,
                                                    ),
                                                    SizedBox(
                                                      width: w * 0.09,
                                                      child: Text(
                                                        "1.230",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                                color: HexColor(
                                                                    "#2081E2")),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              width: w * 0.078,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: HexColor("#2081E2"),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Center(
                                                child: Text(
                                                  "Place a bid",
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 185,
                          child: Image.asset(
                            "assets/images/backarrowbutton.png",
                            width: w * 0.04,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 185,
                          child: Image.asset(
                            "assets/images/frontarrowbutton.png",
                            width: 0.04 * w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: w * 0.62,
                            child: Text(
                              "Top collections",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            )),
                        Spacer(),
                        Container(
                          height: 35,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Week",
                                  style: GoogleFonts.inter(
                                      color: HexColor("#2081E2"),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                              Image.asset(
                                "assets/images/downarrow.png",
                                width: 11,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: HexColor("#2081E2").withOpacity(0.1),
                              border: Border.all(color: HexColor("#2081E2"))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    w > 866
                        ? GridView.builder(
                            shrinkWrap: true,
                            itemCount: name.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 0.269 * w,
                                //height: 20,
                                color: HexColor("#2689ED").withOpacity(0.05),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: w * 0.012,
                                      ),
                                      Text(
                                        (index + 1).toString(),
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                            color: HexColor("#2081E2")),
                                      ),
                                      SizedBox(
                                        width: 0.014 * w,
                                      ),
                                      Image.asset(
                                        images[index],
                                        height: 35,
                                        width: 35,
                                      ),
                                      SizedBox(
                                        width: w * 0.0115,
                                      ),
                                      SizedBox(
                                        width: 0.1057 * w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(name[index],
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 15)),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/bluediamond.png",
                                                  height: 12,
                                                  width: 12,
                                                ),
                                                Text(nfts[index],
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: HexColor(
                                                                "#2081E2"),
                                                            fontSize: 10))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: w * 0.02,
                                      ),
                                      SizedBox(
                                        width: w * 0.04375,
                                        child: Text(
                                          percent[index],
                                          style: GoogleFonts.montserrat(
                                              fontSize: 10,
                                              color: HexColor("#1DBB79"),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 0.0171 * w,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 0.0028 * w),
                          )
                        : GridView.builder(
                            shrinkWrap: true,
                            itemCount: name.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 0.2 * w,
                                //height: 20,
                                color: HexColor("#2689ED").withOpacity(0.05),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: w * 0.012,
                                      ),
                                      Text(
                                        (index + 1).toString(),
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                            color: HexColor("#2081E2")),
                                      ),
                                      SizedBox(
                                        width: 0.014 * w,
                                      ),
                                      Image.asset(
                                        images[index],
                                        height: 35,
                                        width: 35,
                                      ),
                                      SizedBox(
                                        width: w * 0.0115,
                                      ),
                                      SizedBox(
                                        width: 0.1057 * w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(name[index],
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 15)),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/bluediamond.png",
                                                  height: 12,
                                                  width: 12,
                                                ),
                                                Text(nfts[index],
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: HexColor(
                                                                "#2081E2"),
                                                            fontSize: 10))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: w * 0.02,
                                      ),
                                      SizedBox(
                                        width: w * 0.04375,
                                        child: Text(
                                          percent[index],
                                          style: GoogleFonts.montserrat(
                                              fontSize: 10,
                                              color: HexColor("#1DBB79"),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 0.0171 * w,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 0.0035 * w),
                          ),
                    SizedBox(
                      height: 62,
                    ),
                    Container(
                      width: 0.1817 * w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: HexColor("#2081E2")),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Go to Ranking",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: w * 0.5,
                          child: RichText(
                              text: TextSpan(
                                  text: "Trending in ",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40),
                                  children: [
                                TextSpan(
                                    text: "all Categories",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 40,
                                        color: HexColor("#2081E2")))
                              ])),
                        ),
                        Image.asset(
                          "assets/images/downarrow.png",
                          width: 0.03 * w,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: w * 0.245,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/6avatar.png",
                                              width: w * 0.245,
                                              //fit: BoxFit.fitHeight,
                                            ),
                                            SizedBox(
                                              height: 0.03 * w,
                                            ),
                                            Text(
                                              "NFT Collector",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    text: "by ",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: HexColor(
                                                                "#6D6D6D"),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13),
                                                    children: [
                                                  TextSpan(
                                                      text:
                                                          "DogSyndicate_official",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              color: HexColor(
                                                                  "#2081E2"),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13)),
                                                ])),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 0.02 * w,
                                                  right: 0.02 * w,
                                                  top: 20,
                                                  bottom: 26),
                                              child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                    color: HexColor("#6D6D6D")),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          top: w * 0.145,
                                          left: w * 0.1083,
                                          child: Image.asset(
                                            "assets/images/bullavatarpink.png",
                                            width: w * 0.047,
                                          ))
                                    ],
                                  )),
                              SizedBox(
                                width: w * 0.024,
                              ),
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: w * 0.245,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/canticos.png",
                                              width: w * 0.245,
                                              //fit: BoxFit.fitHeight,
                                            ),
                                            SizedBox(
                                              height: 0.03 * w,
                                            ),
                                            Text(
                                              "Canticos",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    text: "by ",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: HexColor(
                                                                "#6D6D6D"),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13),
                                                    children: [
                                                  TextSpan(
                                                      text: "Canticos_creator",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              color: HexColor(
                                                                  "#2081E2"),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13)),
                                                ])),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 0.02 * w,
                                                  right: 0.02 * w,
                                                  top: 20,
                                                  bottom: 26),
                                              child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                    color: HexColor("#6D6D6D")),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          top: w * 0.145,
                                          left: w * 0.1083,
                                          child: Image.asset(
                                            "assets/images/manavatar.png",
                                            width: w * 0.047,
                                          ))
                                    ],
                                  )),
                              SizedBox(width: w * 0.024),
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: w * 0.245,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/mouse.png",
                                              width: w * 0.245,
                                              //fit: BoxFit.fitHeight,
                                            ),
                                            SizedBox(
                                              height: 0.03 * w,
                                            ),
                                            Text(
                                              "Moucies Gamers",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    text: "by ",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: HexColor(
                                                                "#6D6D6D"),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13),
                                                    children: [
                                                  TextSpan(
                                                      text: "mouciesgamers_90",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              color: HexColor(
                                                                  "#2081E2"),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13)),
                                                ])),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 0.02 * w,
                                                  right: 0.02 * w,
                                                  top: 20,
                                                  bottom: 26),
                                              child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                    color: HexColor("#6D6D6D")),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          top: w * 0.145,
                                          left: w * 0.1083,
                                          child: Image.asset(
                                            "assets/images/koalaavatar.png",
                                            width: w * 0.047,
                                          ))
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0.14 * w,
                          child: Image.asset(
                            "assets/images/backarrowbutton.png",
                            width: w * 0.04,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0.14 * w,
                          child: Image.asset(
                            "assets/images/frontarrowbutton.png",
                            width: w * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        SizedBox(width: w * 0.442),
                        SizedBox(
                          width: w * 0.2938,
                          child: RichText(
                              text: TextSpan(
                                  text: "Create and sell your ",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40),
                                  children: [
                                TextSpan(
                                    text: "NFTs",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 40,
                                        color: HexColor("#2081E2")))
                              ])),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //color: Colors.amber,
                          width: w * 0.3718,
                          height: 0.46 * w,
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 0,
                                  top: 0.025 * w,
                                  width: w * 0.268,
                                  child: Image.asset(
                                    "assets/images/belowmonkeynft.png",
                                    //width: w * 0.268,
                                  )),
                              Positioned(
                                  left: 0,
                                  //width: w * 0.27,
                                  child: Image.asset(
                                    "assets/images/monkeynft.png",
                                    width: w * 0.27,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w * 0.0744,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      HexColor("#2081E2").withOpacity(0.15),
                                  radius: w * 0.021,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/walleticon.png",
                                      width: w * 0.0183,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: w * 0.014,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Container(
                                      //color: Colors.amber,
                                      width: w * 0.2245,
                                      child: Text(
                                        "Set up your wallet",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        //color: Colors.amber,
                                        width: w * 0.28,
                                        child: RichText(
                                            text: TextSpan(
                                                text:
                                                    "Once you’ve set up your wallet of choice, connect it to OpenSea by clicking the wallet icon in the top right corner. Learn about the ",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    color: HexColor("#6D6D6D")),
                                                children: [
                                              TextSpan(
                                                  text: "Wallets we support.",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                      color:
                                                          HexColor("#2081E2")))
                                            ]))),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 24),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      HexColor("#2081E2").withOpacity(0.15),
                                  radius: w * 0.021,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/collectionicon.png",
                                      width: w * 0.0183,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: w * 0.014,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Container(
                                      //color: Colors.amber,
                                      width: w * 0.24,
                                      child: Text(
                                        "Create your connection",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        //color: Colors.amber,
                                        width: w * 0.28,
                                        child: RichText(
                                            text: TextSpan(
                                                text: "Clicks ",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    color: HexColor("#6D6D6D")),
                                                children: [
                                              TextSpan(
                                                  text: "My Collections ",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                      color:
                                                          HexColor("#2081E2"))),
                                              TextSpan(
                                                  text:
                                                      "and set up your collection. Add social links, a description, profile & banner images, and set a secondary sales fee",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                      color:
                                                          HexColor("#6D6D6D")))
                                            ]))),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      HexColor("#2081E2").withOpacity(0.15),
                                  radius: w * 0.021,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/listicon.png",
                                      width: w * 0.0183,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: w * 0.014,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Container(
                                      //color: Colors.amber,
                                      width: w * 0.2245,
                                      child: Text(
                                        "List them for sale",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        //color: Colors.amber,
                                        width: w * 0.28,
                                        child: Text(
                                            "Choose between auctions, fixed-price listings, and declining-price listings. You choose how you want to sell your NFTs, and we help you sell them!",
                                            style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: HexColor("#6D6D6D")))),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      HexColor("#2081E2").withOpacity(0.15),
                                  radius: w * 0.021,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/nfticon.png",
                                      width: w * 0.0183,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: w * 0.014,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Container(
                                      //color: Colors.amber,
                                      width: w * 0.2245,
                                      child: Text(
                                        "Add your NFTs",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        //color: Colors.amber,
                                        width: w * 0.28,
                                        child: Text(
                                            "Upload your work (image, video, audio, or 3D art), add a title and description, and customize your NFTs with properties, stats, and unlockable content.",
                                            style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: HexColor("#6D6D6D")))),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 70),
                    Container(
                      //color: Colors.amber,
                      width: w * 0.82,
                      child: Text(
                        "Browse by Category",
                        style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    // Card(
                    //   elevation: 7,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Container(
                    //     color: Colors.amber.withOpacity(0.1),
                    //     width: w * 0.258,
                    //     child: Column(
                    //       children: [
                    //         SizedBox(
                    //           width: double.infinity,
                    //           height: 0.236 * w,
                    //           child: Stack(
                    //             children: [
                    //               Positioned(
                    //                   left: 0,
                    //                   bottom: 0,
                    //                   child: Image.asset(
                    //                     "assets/images/cartoon12.png",
                    //                     width: w * 0.1,
                    //                   )),
                    //               Positioned(
                    //                   right: 0,
                    //                   bottom: 0,
                    //                   child: Image.asset(
                    //                     "assets/images/cartoon12.png",
                    //                     width: w * 0.1,
                    //                   )),
                    //               Positioned(
                    //                   bottom: 0,
                    //                   left: w * 0.0625,
                    //                   child: Image.asset(
                    //                     "assets/images/cartoon3.png",
                    //                     width: w * 0.13,
                    //                   )),
                    //             ],
                    //           ),
                    //         ),
                    //         Container(
                    //           color: HexColor("#DEECFB"),
                    //           width: double.infinity,
                    //           height: 84,
                    //           child: Center(
                    //               child: Text(
                    //             "Cartoon",
                    //             style: GoogleFonts.montserrat(
                    //                 fontSize: 26, fontWeight: FontWeight.w600),
                    //           )),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // )
                    Row(
                      children: [
                        categorycard(
                            "assets/images/cartoon12.png",
                            "assets/images/cartoon12.png",
                            "assets/images/cartoon3.png",
                            "Cartoon"),
                        Spacer(),
                        categorycard(
                            "assets/images/sport1.png",
                            "assets/images/sport2.png",
                            "assets/images/sport3.png",
                            "Sports"),
                        Spacer(),
                        categorycard(
                            "assets/images/painting1.png",
                            "assets/images/painting2.png",
                            "assets/images/painting1.png",
                            "Painting")
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        categorycard(
                            "assets/images/anime1.png",
                            "assets/images/anime2.png",
                            "assets/images/anime3.png",
                            "Anime"),
                        Spacer(),
                        categorycard(
                            "assets/images/photography1.png",
                            "assets/images/photography2.png",
                            "assets/images/photography3.png",
                            "Photography"),
                        Spacer(),
                        categorycard(
                            "assets/images/art1.png",
                            "assets/images/art2.png",
                            "assets/images/art1.png",
                            "Art")
                      ],
                    ),
                    SizedBox(height: 70),
                    Container(
                      //color: Colors.amber,
                      width: w * 0.84,
                      child: Text(
                        "Latest News",
                        style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Container(
                                  width: w * 0.245,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: w * 0.19,
                                        width: double.infinity,
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          color: Colors.black.withOpacity(0.5),
                                          child: Center(
                                            child: Container(
                                              width: w * 0.12,
                                              height: 50,
                                              child: Center(
                                                child: Text(
                                                  "Read More",
                                                  style: GoogleFonts.montserrat(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: HexColor("#2081E2")),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/latestnews.png",
                                          ),
                                        )),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Text(
                                            "27 JAN, 2022",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: HexColor("#AAAAAA")),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      SizedBox(
                                        width: w * 0.2375,
                                        child: Text(
                                          "7 Insights you should know about Metaverse",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      SizedBox(
                                          width: w * 0.2375,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummytext ever since the 1500s,",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: HexColor("#6D6D6D")),
                                          )),
                                      SizedBox(
                                        height: 25,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.0244,
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Container(
                                  width: w * 0.245,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/latestnews.png",
                                        width: double.infinity,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Text(
                                            "27 JAN, 2022",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: HexColor("#AAAAAA")),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      SizedBox(
                                        width: w * 0.2375,
                                        child: Text(
                                          "7 Insights you should know about Metaverse",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      SizedBox(
                                          width: w * 0.2375,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummytext ever since the 1500s,",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: HexColor("#6D6D6D")),
                                          )),
                                      SizedBox(
                                        height: 25,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.0244,
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Container(
                                  width: w * 0.245,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/latestnews.png",
                                        width: double.infinity,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Text(
                                            "27 JAN, 2022",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: HexColor("#AAAAAA")),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      SizedBox(
                                        width: w * 0.2375,
                                        child: Text(
                                          "7 Insights you should know about Metaverse",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      SizedBox(
                                          width: w * 0.2375,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummytext ever since the 1500s,",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: HexColor("#6D6D6D")),
                                          )),
                                      SizedBox(
                                        height: 25,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: w * 0.139,
                          child: Image.asset(
                            "assets/images/backarrowbutton.png",
                            width: w * 0.041,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: w * 0.139,
                          child: Image.asset(
                            "assets/images/frontarrowbutton.png",
                            width: w * 0.041,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 65,
                    ),
                  ],
                ),
              ),
              w > 770
                  ? Container(
                      width: double.infinity,
                      height: 500,
                      color: HexColor("#DEECFB"),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: w * 0.075,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/boaticonbottom.png",
                                        width: w * 0.041,
                                      ),
                                      SizedBox(
                                        width: w * 0.0099,
                                      ),
                                      Text(
                                        "OpenSea",
                                        style: GoogleFonts.poppins(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  SizedBox(
                                      width: w * 0.26,
                                      child: Text(
                                        "The world’s first and largest digital marketplace for crypto collectibles and non-fungible tokens (NFTs). Buy, sell, and discover exclusive digital items",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: HexColor("#6D6D6D")),
                                      )),
                                  SizedBox(
                                    height: 44,
                                  ),
                                  SizedBox(
                                      width: w * 0.26,
                                      child: Text(
                                        "Join the Community",
                                        style: GoogleFonts.poppins(
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17),
                                      )),
                                  SizedBox(
                                    height: 27,
                                  ),
                                  SizedBox(
                                    width: 0.183 * w,
                                    child: Wrap(
                                      spacing: w * 0.012,
                                      children: [
                                        Container(
                                          height: 36,
                                          width: 36,
                                          child: Center(
                                              child: Image.asset(
                                            "assets/images/instaicon.png",
                                            width: 18,
                                            height: 18,
                                          )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: HexColor("#2081E2")
                                                  .withOpacity(0.2)),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          child: Center(
                                              child: Image.asset(
                                            "assets/images/fbicon.png",
                                            width: 18,
                                            height: 18,
                                          )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: HexColor("#2081E2")
                                                  .withOpacity(0.2)),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          child: Center(
                                              child: Image.asset(
                                            "assets/images/twittericon.png",
                                            width: 18,
                                            height: 18,
                                          )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: HexColor("#2081E2")
                                                  .withOpacity(0.2)),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          child: Center(
                                              child: Image.asset(
                                            "assets/images/emailicon.png",
                                            width: 18,
                                            height: 18,
                                          )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: HexColor("#2081E2")
                                                  .withOpacity(0.2)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: w * 0.058,
                              ),
                              SizedBox(
                                width: w * 0.15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Marketplace",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("All NFTs",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Discover",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Creators",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Top Collections",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Collector",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("NFT Guideline",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: w * 0.15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("My Account",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("Profiles",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Favourites",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Watchlist",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("My collection",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Setting",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: w * 0.15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Resourse",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("Help Center",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Platform Status",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Partner",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Taxes",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Blog",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Newsletter",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: w * 0.15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Company",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("About",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Career",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Partner",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Ventures",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 53,
                          ),
                          Divider(
                            thickness: 2,
                            color: HexColor("#2081E2"),
                            indent: w * 0.077,
                            endIndent: w * 0.077,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.0755,
                              ),
                              SizedBox(
                                width: 0.42 * w,
                                child: Text(
                                  "© 2018 - 2022 Ozone Networks, Inc",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: HexColor("#2081E2"),
                                      fontSize: 15),
                                ),
                              ),
                              //SizedBox(width: w*0.18,),
                              Spacer(),
                              Text(
                                "Privacy Policy",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: HexColor("#2081E2"),
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Text(
                                "Terms of Service",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: HexColor("#2081E2"),
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: w * 0.0755,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      //height: 800,
                      color: HexColor("#DEECFB"),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/boaticonbottom.png",
                                    width: w * 0.041,
                                  ),
                                  SizedBox(
                                    width: w * 0.0099,
                                  ),
                                  Text(
                                    "OpenSea",
                                    style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                  width: w * 0.78,
                                  child: Text(
                                    "The world’s first and largest digital marketplace for crypto collectibles and non-fungible tokens (NFTs). Buy, sell, and discover exclusive digital items",
                                    style: GoogleFonts.roboto(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: HexColor("#6D6D6D")),
                                  )),
                              SizedBox(
                                height: 44,
                              ),
                              SizedBox(
                                  width: w * 0.4,
                                  child: Text(
                                    "Join the Community",
                                    style: GoogleFonts.poppins(
                                        color: HexColor("#2081E2"),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  )),
                              SizedBox(
                                height: 27,
                              ),
                              SizedBox(
                                width: 0.45 * w,
                                child: Wrap(
                                  spacing: w * 0.012,
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 36,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/instaicon.png",
                                        width: 18,
                                        height: 18,
                                      )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: HexColor("#2081E2")
                                              .withOpacity(0.2)),
                                    ),
                                    Container(
                                      height: 36,
                                      width: 36,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/fbicon.png",
                                        width: 18,
                                        height: 18,
                                      )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: HexColor("#2081E2")
                                              .withOpacity(0.2)),
                                    ),
                                    Container(
                                      height: 36,
                                      width: 36,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/twittericon.png",
                                        width: 18,
                                        height: 18,
                                      )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: HexColor("#2081E2")
                                              .withOpacity(0.2)),
                                    ),
                                    Container(
                                      height: 36,
                                      width: 36,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/emailicon.png",
                                        width: 18,
                                        height: 18,
                                      )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: HexColor("#2081E2")
                                              .withOpacity(0.2)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: w * 0.07,
                              ),
                              SizedBox(
                                width: w * 0.23,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Marketplace",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("All NFTs",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Discover",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Creators",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Top Collections",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Collector",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("NFT Guideline",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: w * 0.23,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("My Account",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("Profiles",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Favourites",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Watchlist",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("My collection",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Setting",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: w * 0.23,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Resourse",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("Help Center",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Platform Status",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Partner",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Taxes",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Blog",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Newsletter",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: w * 0.23,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Company",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: HexColor("#2081E2"),
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 30),
                                    Text("About",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 13),
                                    Text("Career",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Partner",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text("Ventures",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: HexColor("#000000"),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 53,
                          ),
                          Divider(
                            thickness: 2,
                            color: HexColor("#2081E2"),
                            indent: w * 0.077,
                            endIndent: w * 0.077,
                          ),

                          Text(
                            "© 2018 - 2022 Ozone Networks, Inc",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: HexColor("#2081E2"),
                                fontSize: 15),
                          ),
                          //SizedBox(width: w*0.18,),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Privacy Policy",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: HexColor("#2081E2"),
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Terms of Service",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: HexColor("#2081E2"),
                                fontSize: 15),
                          ),
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
