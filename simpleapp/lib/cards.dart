import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logopath;
  final int hourlyRate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logopath,
    required this.hourlyRate,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRect(
        child: Container(
            width: 210,
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 60,
                        child: Image(
                          image: AssetImage(logopath),
                        )),
                    ClipRect(
                      child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.grey[500],
                          child: Text("Part Time",
                              style: TextStyle(color: Colors.white))),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(jobTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ),
                Text("\$"+hourlyRate.toString()+"/hr")
              ],
            )),
      ),
    );
  }
}
