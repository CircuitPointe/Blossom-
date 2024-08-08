import 'package:blossom/components/button.dart';
import 'package:blossom/datasource/contact_person_data/home_visit_date.dart';
import 'package:blossom/features/contact_person/home_visits/congratulations_view.dart';
import 'package:blossom/features/contact_person/home_visits/home_visits_provider.dart';
import 'package:blossom/features/contact_person/home_visits/quiz_question_component.dart';
import 'package:blossom/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class FGMDetailView extends StatefulWidget {
  final int i;
  const FGMDetailView({super.key, required this.i});

  @override
  State<FGMDetailView> createState() => _FGMDetailViewState();
}

class _FGMDetailViewState extends State<FGMDetailView> {
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
                    if (pageIndex == 5) {
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
        ),
      ),
    );
  }

  String getTitle() {
    switch (pageIndex) {
      case 0:
        return "WHAT IS FEMALE GENITAL\nMUTILATION?";
      case 1:
        return "TYPES OF FEMALE GENITAL\nMUTILATION?";
      case 2:
        return "WHY SOME PEOPLE PERFORM\nFGM?";
      case 3:
        return "HEALTH EFFECTS OF FGM.";
      case 4:
        return "LEGAL EFFECTS OF FGM";
      case 5:
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
        HomeVisitData.whatIsFGM,
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
          Text(
            'There are four (4) types of Female Genital Mutilation namely;',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 10.h),
          richTextTile('Type I:', ' Clitoridectomy; removal of the clitoris'),
          richTextTile('Type II:', ' Excision; removal of the clitoris and other outer part of the female body'),
          richTextTile('Type III:', ' Infibulation; removal of both clitoris and outer part of the body and stitching together'),
          richTextTile('Type IV:', ' Unclassified; any other action done to the female organ, pressing, rubbing etc. It is performed by Traditional Birth Attendants, mothers, grandmothers, female relatives, midwives and even nurses.'),
        ],
      ),
    );
  }

  Widget pageThree(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          richTextTile('', 'Stop girls from having many partners and make sure they are virgins before marriage and stay faithful after.'),
          richTextTile('', 'Keep the female private parts small, so it doesn’t look like the males.'),
          richTextTile('', 'Make sure the female private parts look clean and nice.'),
          richTextTile('', 'Provide income for Traditional Birth Attendants (TBAs).'),
        ],
      ),
    );
  }

  Widget pageFour(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          richTextTile('', 'Excessive bleeding (haemorrhage).'),
          richTextTile('', 'Severe pain.'),
          richTextTile('', 'Shock and fever.'),
          richTextTile('', 'Swelling of the genital tissue.'),
          richTextTile('', 'Infections.'),
          richTextTile('', 'Problems with urination.'),
          richTextTile('', 'Difficulty healing wounds.'),
          richTextTile('', 'Death.'),
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
          richTextTile('', 'Damage to genital tissue.'),
          richTextTile('', 'Itching and discharge in the vagina.'),
          richTextTile('', 'Menstrual problems'),
          richTextTile('', 'Infections in the reproductive tract'),
          richTextTile('', 'Long-lasting genital infections'),
          richTextTile('', 'Urinary tract infections'),
          richTextTile('', 'Painful urination'),
          richTextTile('', 'Formation of keloids and cysts'),
          richTextTile('', 'Sexual problems'),
          richTextTile('', 'Higher risks during childbirth'),
          richTextTile('', 'Emotional or psychological problems'),
        ],
      ),
    );
  }

  Widget pageFive(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The practice of FGM/C is a criminal offence and punishable under the law with the following:',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              height: 2
            ),
          ),
          SizedBox(height: 10.h),
          richTextTile('', 'Anyone who performs or engages another to perform FGM/C on any person is liable to a term of imprisonment not exceeding 4 years or to a fine not exceeding N200,000 or to both.'),
          richTextTile('', 'Anyone who attempts, aids, abets, or incites another to carry out FGM is liable to a term not exceeding 2 years imprisonment or to a fine not exceeding N100,000 or both.'),
        ],
      ),
    );
  }

  Widget pageSix(BuildContext context) {
    return ListView(
      children: List.generate(8, (index) => QuizQuestion(questionNumber: index + 1, type: FamilyDataType.fgm,)),
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
