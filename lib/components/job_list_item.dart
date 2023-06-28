import 'package:flutter/material.dart';
import 'package:visan_portal/model/job_item.dart';
import 'package:visan_portal/pages/application.dart';

class JobListItem extends StatelessWidget {
  final JobItem jobItem;
  const JobListItem({Key? key, required this.jobItem}) : super(key: key);

  getPriceTypeString() {
    return jobItem.isFixedPrice ? "Fixed price" : "Variable price";
  }

  getModeOfPlacement() {
    return jobItem.isOnSite ? "On Site" : "Remote";
  }

  getPaymentStatus() {
    return jobItem.isPaymentVerified
        ? "Payment verified"
        : "Payment not verified";
  }

  getAmountInText(num val) {
    var mod = val / 1000;
    return "${mod}k";
  }

  getJobPriceText() {
    return "${getAmountInText(jobItem.minPrice)} - ${getAmountInText(jobItem.maxPrice)} / ${jobItem.priceUnit}";
  }

  getJobCreatedSince() {
    Duration delta = DateTime.now().difference(jobItem.postedOn);
    return "${delta.inDays} day ago";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 218, 218, 218), width: 1))),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Application()),
              );
            },
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  jobItem.title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
                const Icon(Icons.favorite_border_rounded)
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Text(jobItem.company,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(115, 52, 52, 52))))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                        "${getPriceTypeString()} | ${getModeOfPlacement()}")),
                Text("${getJobPriceText()}",
                    style: const TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                jobItem.elapsedString,
                style: const TextStyle(color: Color.fromARGB(255, 196, 35, 23)),
              )),
              Text(getJobCreatedSince())
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(child: Text(getPaymentStatus())),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined),
                    Text(jobItem.location)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
