import 'package:blossom/features/contact_person/home_visits/quiz_question_component.dart';
import 'package:blossom/features/contact_person/home_visits/wrap_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/button.dart';
import '../../../datasource/contact_person_data/home_visit_date.dart';
import '../../../navigation.dart';
import 'home_visits_provider.dart';



class SPHRDetailView extends StatefulWidget {
  final int i;
  const SPHRDetailView({super.key, required this.i});

  @override
  State<SPHRDetailView> createState() => _SPHRDetailViewState();
}

class _SPHRDetailViewState extends State<SPHRDetailView> {
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
                    children: List.generate(6, (index) {
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
                  Expanded(
                    child: Text(
                      getTitle(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 32.sp,
                          color: const Color(0xff783793)
                      ),
                    ),
                  ),
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
                      if (pageIndex == 5) {
                        // go to success
                        Navigation.replace(const WrapUpView(), context);
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
        return "WHAT IS SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SRHR)";
      case 1:
        return "FORMS OF SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SRHR)";
      case 2:
        return "SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SRHR) RIGHTS";
      case 3:
        return "CHALLENGES OF REPRODUCTIVE HEALTH AND RIGHT (SRHR) ";
      case 4:
        return "IMPORTANCE OF REPRODUCTIVE HEALTH AND RIGHT (SRHR)";
      case 5:
        return "Questions & Answer";
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
      case 3:
        return pageFour(context);
      case 4:
        return pageFive(context);
      case 5:
        return pageSix(context);
    }

    return Container();
  }

  Widget pageOne(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        HomeVisitData.whatIsSPHR,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
            height: 2
        ),
      ),
    );
  }

  Widget pageTwo(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          richTextTile('Sexual Health:', ' Includes physical, emotional, mental, and social well-being related to sexuality. It encompasses aspects such as sexual rights, sexual pleasure, sexual consent, sexual orientation, gender identity, and sexual behaviors.'),
          richTextTile('Reproductive Health:', ' Encompasses a range of issues related to reproductive processes, functions, and systems at all stages of life. This includes family planning, maternal health, access to safe abortion services, prevention and treatment of sexually transmitted infections (STIs), including HIV/AIDS, infertility, and reproductive cancers.'),
        ],
      ),
    );
  }

  Widget pageThree(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20.sp, color: Colors.black, height: 2), // Default text style for whole RichText
              children: const [
                TextSpan(text: "Rights:", style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: " SRHR is grounded in human rights principles, including the rights to health, privacy, information, education, bodily autonomy, and non-discrimination. It emphasizes the importance of ensuring that individuals can exercise their rights without facing stigma, discrimination, or violence."),
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'IMPORTANCE OF REPRODUCTIVE\nHEALTH AND RIGHT (SRHR)',
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
            HomeVisitData.importanceOfSRHR,
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

  Widget pageFour(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          richTextTile('', 'Lack of access to comprehensive SRHR services, particularly in low-resource settings or marginalized communities.'),
          richTextTile('', 'Stigma, discrimination, and cultural barriers surrounding sexuality and reproduction, which can limit access to information and services.'),
          richTextTile('', 'Legal and policy barriers, including restrictive laws on abortion, contraception, and sexuality education.'),
          richTextTile('', 'Gender inequality and power imbalances, which can impact individuals’ ability to make autonomous decisions about their sexual and reproductive lives.')
        ],
      ),
    );
  }

  Widget pageFive(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        HomeVisitData.importanceOfSRHR2,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
            height: 2
        ),
      ),
    );
  }

  Widget pageSix(BuildContext context) {
    return ListView(
      children: List.generate(8, (index) => QuizQuestion(questionNumber: index + 1, type: FamilyDataType.srhr,)),
    );
  }

  Widget richTextTile(String? type, String description) {
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
