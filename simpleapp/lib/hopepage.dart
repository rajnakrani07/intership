import 'package:flutter/material.dart';
import 'recentjob.dart';
import 'cards.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List jobForYou = [
    ["Uber", "UI Designer", "lib/icons/uber.png", 45],
    ["Google", "Product Dev.", "lib/icons/7123025_logo_google_g_icon.png", 80],
    ["Apple", "Software Eng", "lib/icons/apple.png", 90],
  ];
  final List recentjob = [
    ["Nike", "Web Designer", "lib/icons/nike.png", 56],
    ["Apple", "security team", "lib/icons/apple.png", 90],
    ["Google", "Manager", "lib/icons/7123025_logo_google_g_icon.png",80],

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
                height: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                child: Image(image: AssetImage("lib/icons/left_menu.png"))),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text("Descover a New Path",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Container(
                              height: 30,
                              child: Image(
                                  image: AssetImage("lib/icons/search.png"))),
                          Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search For Job..")),
                          ),
                        ],
                      )),
                ),
                SizedBox(width: 10),
                Container(
                    height: 50,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.grey[800]),
                    child: Image(image: AssetImage("lib/icons/preference.png")))
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "For You",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 25),
          Container(
            height: 170,
            child: ListView.builder(
                itemCount: jobForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return JobCard(
                      companyName: jobForYou[index][0],
                      jobTitle: jobForYou[index][1],
                      logopath: jobForYou[index][2],
                      hourlyRate: jobForYou[index][3]);
                }),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text("Recently Added",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.builder(itemCount: recentjob.length,itemBuilder: (context, index) {
              return RecentJob(
                companyName:recentjob[index][0],
                jobTitle: recentjob[index][1],
                logopath: recentjob[index][2],
                hourlyRate: recentjob[index][3],
              );
            },),
          ))
        ]));
  }
}
