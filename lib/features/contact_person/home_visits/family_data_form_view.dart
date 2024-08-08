import 'package:blossom/features/contact_person/home_visits/fgm_view.dart';
import 'package:blossom/features/contact_person/home_visits/ipv_view.dart';
import 'package:blossom/features/contact_person/home_visits/sphr_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../components/button.dart';
import '../../../navigation.dart';
import 'home_visits_provider.dart';


class FamilyDataFormView extends StatelessWidget {
  const FamilyDataFormView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeVisitsProvider>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Family Data', style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff783793)
        ),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset('assets/background_plain.png', width: double.infinity, height: double.infinity, fit: BoxFit.fill,),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView(
                children: [
                  Image.asset('assets/family_data_two.png', width: 344.w, height: 344.w),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomButton(
                    text: 'Female Genital Mutilation (FGM)',
                    context: context,
                    outlined: true,
                    onPressed: () {
                      Navigation.push(const FGMView(), context);
                    },
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomButton(
                    text: 'Intimate Partner Violence (IPV)',
                    context: context,
                    outlined: true,
                    onPressed: () {
                      Navigation.push(const IPVView(), context);
                    },
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomButton(
                    text: 'Sexual Reproductive Health and Right (SPHR)',
                    context: context,
                    outlined: true,
                    onPressed: () {
                      Navigation.push(const SPHRView(), context);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
