
class HomeVisitData {
  static String text = "Circuit Pointe is an NGO that helps women and girls to know their right. We talk about things that can hurt women, like Female Genital Mutilation (FGM) and Intimate Partner Violence (IPV). Right now, we’re doing something called the End Violence against Women and Girls (EVAWG) project, and one part of it is family sessions. Before this, we visited families at their homes and asked them questions. The answers we got helped us plan these family sessions. Our goal is to teach families about things they might not know based on what we learned from our visits. \n\nAs the person you can reach out to in your community, I’ll be teaching you and your family about FGM, IPV, and SRHR. We’ll talk about what they are and how they can affect you. Our aim is to give you and your family the tools and knowledge to make right choices about your health and happiness. Any worries you share during our talks will be kept private.";
  static String whatIsFGM = "Female Genital Mutilation, or FGM, is when a girl’s private parts are hurt or damaged for no good reason. It might involve cutting off part of the outside or doing something to it to make it look different. In Igbo culture, it’s called “Ibi Nwanyi Ugwu” , ”ibi Ugwu Nwanyi” ,or “Ime Ukwu”.\n\nFGM doesn’t make girls or women healthier and it’s against their rights. It’s usually done to baby girls within their first 10 days or older girls between 15 and 18, or sometimes when they get married. According to the World Health Organization, over 200 million girls and women have had FGM, and more than 3 million girls are at risk of it every year.";
  static String typesOfIPV = "The behavior may be verbally, psychologically, physically or sexually, financially or technologically abusive with the victim left feeling scared, confused, and insecure. The effects of emotional abuse can be just as damaging as the effects of physical abuse";
  static String whatIsSPHR = "SRHR means that everyone has the right to make choices about their sexual and reproductive health.\n\nThis includes getting information and services without anyone forcing them or treating them unfairly. It also means being able to make decisions about having children without being pressured or harmed.";
  static String importanceOfSRHR = "SRHR is fundamental to achieving various global development goals, including the Sustainable Development Goals (SDGs), particularly Goal 3 (Good Health and Well-being) and Goal 5 (Gender Equality). It contributes to reducing maternal and infant mortality, preventing STIs, including HIV/AIDS, promoting gender equality, and empowering individuals to make informed choices about their bodies and lives. Ensuring SRHR is essential for promoting social justice, gender equality, and human dignity.";
  static String importanceOfSRHR2 = "SRHR is very important for both public health and human rights. It includes sexual health, reproductive health, and rights. It helps with things like making sure men and women are treated equally, reducing how many mothers die during childbirth, stopping sexually transmitted infections, and giving people the power to make good decisions about their sex lives and having children. Even though there are some difficulties, people all over the world are working hard to make sure everyone’s rights in this area are respected.";
  static String wrapUpSpeech = "I want to appreciate you and your family for being part of this family session. I am also impressed that through the various knowledge checks carried out, you have shown that you learnt what was taught and have understood clearly the 3 concepts.";

  static String getFGMQuestionText(int number) {
    switch (number) {
      case 1:
        return '1. FGM is good for the woman’s body True or False?';
      case 2:
        return '2. We have 5 types of FGM. True or False?';
      case 3:
        return '3. FGM/C has no health implication. True or false?';
      case 4:
        return '4. FGM can lead to bleeding or even death. True or false?';
      case 5:
        return '5. FGM/C is mostly performed by fathers. True or false';
      case 6:
        return '6. There is no law against the practice of FGM. True or false?';
      case 7:
        return '7. FGM/C is a violation of human rights of girls and women. True or false?';
      case 8:
        return '8. Anyone who performs or engages another to perform FGM/C on any person is liable to a term of imprisonment not exceeding 4 years or to a fine not exceeding N200,000 or to both. True or false?';
      default:
        return '';
    }
  }

  static String getIPVQuestionText(int number) {
    switch (number) {
      case 1:
        return '1. IPV can be economical. True or false?';
      case 2:
        return '2. Use of Drugs is one of the effects of IPV. True or false?';
      case 3:
        return '3. IPV has no health implication. True or false?';
      case 4:
        return '4. IPV is a violation of human rights. True or false?';
      default:
        return '';
    }
  }

  static String getSRHRQuestionText(int number) {
    switch (number) {
      case 1:
        return '1. SRHR is an important part of public health (True or False)?';
      case 2:
        return '2. SRHR is made up of 4 parts (True or False)?';
      case 3:
        return '3. Lack of access to SRHR services is a challenge for SRHR (True or False)?';
      default:
        return '';
    }
  }
}