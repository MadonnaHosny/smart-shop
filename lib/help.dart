import 'package:flutter/material.dart';
import 'package:graduationproject/transition_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "Help",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text("I can't place my order",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        // color: Theme.of(context).colorScheme.onBackground,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(SlideLeftAnimationRoute(Page: Question1()));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              color: Theme.of(context).colorScheme.secondaryContainer,
              height: 0.5,
              child: const Divider(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text("Online payment didn't go through",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        // color: Theme.of(context).colorScheme.onBackground,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(SlideLeftAnimationRoute(Page: Question2()));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              color: Theme.of(context).colorScheme.secondaryContainer,
              height: 0.5,
              child: const Divider(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("I didn't recieve my order",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                onTap: () {   Navigator.of(context)
                      .push(SlideLeftAnimationRoute(Page: Question3()));},
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              color: Theme.of(context).colorScheme.secondaryContainer,
              height: 0.5,
              child: const Divider(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("FAQ",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(SlideLeftAnimationRoute(Page: const FAQ()));
                },
              ),
            ),
          ],
        ));
  }
}

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  bool isVisible = false;
  bool theme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "FAQ",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("What is S-Mart?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "S-Mart is a leading online grocery delivery service that operates in Egypt.\nOur Application offers all fresh food that you might need for your kitchen.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("How do I place an order on S-Mart?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "Go to S-Mart app, log in with your account, then select products that you want to buy, add them to cart, press on checkout then fill your information and confirm your order.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("Can I re-order a previous order?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "Yes. In the app, you can simply go to the 'My Orders' section and choose an order from your previous orders, and re-order it.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("How can I add a new address?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "After checkout. Click on 'Change Address' then you will be able to add the new address details.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text(
                          "I was not happy with my order? Who should I contact?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "If you have any issues with your order, you can notify us by calling our call center number.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text(
                          "I paid online and then my order was cancelled. How long will it take for my online payment to be refunded?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "In most cases, the online payment was not charged but only put on hold by the bank. the bank immediately releases the payment hold upon canceled orders. Most of the time this should be reflected in your account within 24 hours. Some credit card provider banks, however, can take 7-14 days to release the funds after the application requests the release of the hold. This is outside of S-Mart's control and the best course of action, if this happens, is to call your bank.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("How do I search for an item?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "Simply type the name of the product that you’re looking for in the search bar.\nThe search bar can be found on the top of your page.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("Do you have special offers?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "Yes. You can view the latest offers in offers tab at home page.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text(
                          "Can I make a payment online in a foreign currency?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "S-Mart currently only accepts Egyptian pounds.",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    child: ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(198, 48, 48, 1),
                      iconColor: Color.fromRGBO(198, 48, 48, 1),
                      title: Text("How can I contact S-Mart?",
                          style: Theme.of(context).textTheme.headlineLarge),
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.outline,
                          child: ListTile(
                            title: Text(
                                "You can contact us anytime through our call center number (+20 1060004750).",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Question1 extends StatefulWidget {
  const Question1({super.key});

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: const Text(
            "I can't place my order",
            style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          //elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("I can't place my order",
                  style: Theme.of(context).textTheme.headlineLarge),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("That's not good. Have you:",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 11.5,
                        ),
                        child: Container(
                          width: 2,
                          height: 105,
                          color: Color.fromRGBO(198, 48, 48, 1),
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(198, 48, 48, 1),
                            borderRadius: BorderRadius.circular(12.5)),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 48, 48, 1),
                              borderRadius: BorderRadius.circular(12.5)),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 48, 48, 1),
                              borderRadius: BorderRadius.circular(12.5)),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Made sure you have an account?",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: Text(
                            "Made sure the item is available?",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: Text(
                            "Enter your payment details correctly?",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text("Was this helpful?",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromRGBO(198, 48, 48, 1),
                    ),
                  ),
                  child: Center(
                    child: Text("Yes, I got my answer",
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // click2 = !click2;
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          actions: [
                            MaterialButton(
                                onPressed: () {
                                  launchUrl(Uri.parse("tel:+201060004750"));
                                  Navigator.pop(context);
                                },
                                child: Text("Call")),
                            MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel"))
                          ],
                          content: Text(
                              "You can get more information by contact us",
                              style: Theme.of(context).textTheme.bodyText1),
                        );
                      });
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromRGBO(198, 48, 48, 1),
                    ),
                  ),
                  child: Center(
                    child: Text('No, add more information',
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: const Text(
            "Online payment didn't go through",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  "There are several reasons why an online payment may fail. Here are a few common problems worth checking:",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 11.5,
                        ),
                        child: Container(
                          width: 2,
                          height: 195,
                          color: Color.fromRGBO(198, 48, 48, 1),
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(198, 48, 48, 1),
                            borderRadius: BorderRadius.circular(12.5)),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 85,
                        //left: 13,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 48, 48, 1),
                              borderRadius: BorderRadius.circular(12.5)),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        //left: 13,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 48, 48, 1),
                              borderRadius: BorderRadius.circular(12.5)),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1. Make sure you're using the right card.",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "2. Make sure the card is not expired and the details are entered correctly, or try another the card.",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "3. If that doesn't work, you can always pay in cash or attempt the payment later.",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text("Was this helpful?",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                // Do something here when button is long pressed
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromRGBO(198, 48, 48, 1),
                    ),
                  ),
                  child: Center(
                    child: Text("Yes, I got my answer",
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // click2 = !click2;
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          actions: [
                            MaterialButton(
                                onPressed: () {
                                  launchUrl(Uri.parse("tel:+201060004750"));
                                  Navigator.pop(context);
                                },
                                child: Text("Call")),
                            MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel"))
                          ],
                          content: Text(
                              "You can get more information by contact us",
                              style: Theme.of(context).textTheme.bodyText1),
                        );
                      });
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromRGBO(198, 48, 48, 1),
                    ),
                  ),
                  child: Center(
                    child: Text('No, add more information',
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
class Question3 extends StatefulWidget {
  const Question3({super.key});

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: const Text(
            "I can't place my order",
            style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          //elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("I didn't receive my order",
                  style: Theme.of(context).textTheme.headlineLarge),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("That's not good. Have you:",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 11.5,
                        ),
                        child: Container(
                          width: 2,
                          height: 105,
                          color: Color.fromRGBO(198, 48, 48, 1),
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(198, 48, 48, 1),
                            borderRadius: BorderRadius.circular(12.5)),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 48, 48, 1),
                              borderRadius: BorderRadius.circular(12.5)),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 48, 48, 1),
                              borderRadius: BorderRadius.circular(12.5)),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Verified your delivery address?",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: Text(
                            "Checked your order status?",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: Text(
                            "Contacted Customer Service?",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ), 
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text("Was this helpful?",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromRGBO(198, 48, 48, 1),
                    ),
                  ),
                  child: Center(
                    child: Text("Yes, I got my answer",
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // click2 = !click2;
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          actions: [
                            MaterialButton(
                                onPressed: () {
                                  launchUrl(Uri.parse("tel:+201060004750"));
                                  Navigator.pop(context);
                                },
                                child: Text("Call")),
                            MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel"))
                          ],
                          content: Text(
                              "You can get more information by contact us",
                              style: Theme.of(context).textTheme.bodyText1),
                        );
                      });
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromRGBO(198, 48, 48, 1),
                    ),
                  ),
                  child: Center(
                    child: Text('No, add more information',
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
