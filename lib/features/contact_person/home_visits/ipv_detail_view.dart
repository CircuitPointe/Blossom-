import 'package:blossom/datasource/contact_person_data/home_visit_date.dart';
import 'package:blossom/features/contact_person/home_visits/home_visits_provider.dart';
import 'package:blossom/features/contact_person/home_visits/quiz_question_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/button.dart';
import '../../../navigation.dart';
import 'congratulations_view.dart';



class IPVDetailView extends StatefulWidget {
  final int i;

  const IPVDetailView({super.key, required this.i});

  @override
  State<IPVDetailView> createState() => _IPVDetailViewState();
}

class _IPVDetailViewState extends State<IPVDetailView> {
  var pageIndex = 0;

  @override
  void initState() {
    pageIndex = widget.i;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (index) {
                      return page((index + 1).toString(), pageIndex > index, pageIndex == index);
                    }),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if (pageIndex == 0) {
                          Navigation.pop(context);
                        } else {
                          setState(() {
                            pageIndex -= 1;
                          });
                        }
                      },
                      icon: const Icon(Icons.chevron_left, size: 32, color: Colors.black,)
                  ),
                  const Spacer(),
                  Text(
                    getTitle(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.sp,
                        color: const Color(0xff783793)
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: getPage(pageIndex, context),
                  )
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: CustomButton(
                    text: "Continue",
                    context: context,
                    onPressed: () {
                      if (pageIndex == 2) {
                        // go to success
                        Navigation.replace(const CongratulationsView(title: 'CONGRATULATIONS', desc: 'Your response has been successfully recorded.'), context);
                      } else {
                        setState(() {
                          pageIndex += 1;
                        });
                      }
                    },
                  )
              )
            ],
          ),
        )
      ),
    );
  }

  String getTitle() {
    switch (pageIndex) {
      case 0:
        return "WHAT IS INTIMATE PARTNER\nVIOLENCE (IPV)?";
      case 1:
        return "EFFECTS OF IPV ON THE VICTIMS";
      case 2:
        return "QUESTIONS & ANSWER";
      default:
        return "";
    }
  }

  Widget page(String value, bool isPassed, bool isCurrentPage) {
    return CircleAvatar(
      backgroundColor: isPassed || isCurrentPage ? const Color(0xffE6A5FF) : Colors.transparent,
      radius: 12,
      child: CircleAvatar(
        backgroundColor: isPassed || isCurrentPage ? const Color(0xff783793) : const Color(0xffE6A5FF),
        radius: 8,
        child: Text(
          value,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: isPassed || isCurrentPage ? Colors.white : Colors.black
          ),
        ),
      ),
    );
  }

  Widget getPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        return pageOne(context);
      case 1:
        return pageTwo(context);
      case 2:
        return pageThree(context);
    }

    return Container();
  }

  Widget pageOne(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20.sp, color: Colors.black, height: 2), // Default text style for whole RichText
              children: const [
                TextSpan(text: "Intimate partner violence is a "),
                TextSpan(text: "pattern", style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: " of abusive behavior in an intimate relationship where one partner tries to "),
                TextSpan(text: "control", style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: " and dominate the other."),
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'TYPES OF INTIMATE PARTNER\nVIOLENCE (IPV)?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  color: const Color(0xff783793)
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            HomeVisitData.typesOfIPV,
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                height: 2
            ),
          ),
        ],
      ),
    );
  }

  Widget pageTwo(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          richTextTile('', 'Suicide'),
          richTextTile('', 'Health complications such as mental disorders, Hormonal imbalance'),
          richTextTile('', 'Use of Drugs and alcohol'),
          richTextTile('', 'Low productivity at work, as a wife and a mother and more'),
          richTextTile('', 'Eating and sleep disorders'),
          richTextTile('', 'Physical inactivity'),
          richTextTile('', 'Poor self-esteem'),
          richTextTile('', 'Post-traumatic stress disorder'),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Long Term Risks',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  color: const Color(0xff783793)
              ),
            ),
          ),
          richTextTile('', 'Violence can harm women and girls in many ways, affecting their bodies, minds, and ability to have children. Almost half of the world’s population are females.'),
          richTextTile('', 'Children who grow up in violent homes might have problems with their behavior and feelings. They might also become violent or be victims of violence when they grow up, leading to more crime in society.'),
          richTextTile('', 'Intimate partner violence and FGM can lead to more babies and children dying or getting sick, like from diseases or not getting enough food. This can also cause problems during childbirth.'),
          richTextTile('', 'Violence between partners and sexual violence cost a lot of money and cause many problems in society.'),
          richTextTile('', 'Women who experience violence might become isolated, unable to work, lose money, miss out on activities, and struggle to take care of themselves and their children.'),
        ],
      ),
    );
  }

  Widget pageThree(BuildContext context) {
    return ListView(
      children: List.generate(4, (index) => QuizQuestion(questionNumber: index + 1, type: FamilyDataType.ipv,)),
    );
  }

  Widget richTextTile(String type, String description) {
    return ListTile(
      leading: const Icon(Icons.fiber_manual_record, size: 12, color: Color(0xff783793),),
      title: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20.sp, color: Colors.black), // Default text style
          children: <TextSpan>[
            TextSpan(text: type, style: const TextStyle(fontWeight: FontWeight.w600)),
            TextSpan(text: description, style: const TextStyle(fontWeight: FontWeight.w400, height: 2)),
          ],
        ),
      ),
    );
  }
}
