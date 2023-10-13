import 'package:flutter/material.dart';

class RecentJob extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logopath;
  final int hourlyRate;

  RecentJob({
    required this.companyName,
    required this.jobTitle,
    required this.logopath,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRect(
                    child: Container(
                        height: 50,
                        padding: EdgeInsets.all(12),
                        color: Colors.grey[300],
                        child: Image(image: AssetImage(logopath))),
                  ),

              SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(jobTitle,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(companyName, style: TextStyle(color: Colors.grey[600])),
              ]),
                ],
              ),
              Text("\$"+hourlyRate.toString()+"/hr")
            ],
          )),
    );
  }
}
