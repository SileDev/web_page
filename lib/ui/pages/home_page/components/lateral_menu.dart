import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/elements/lateral_menu/lm_top_icon.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 289,
        constraints: BoxConstraints(
          minHeight: size.height - (56 + 32),
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(color: Color(0xffb8b8b8), blurRadius: 4),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: const Color(0xffe8e8e8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                child: Row(
                  children: const [
                    LMTopIcon(
                      isSelected: true,
                      iconRoute: "assets/lateral_menu/lmi1.jpg",
                      name: "ActionPower",
                    ),
                    LMTopIcon(
                      isSelected: false,
                      iconRoute: "assets/lateral_menu/lmi2.jpg",
                      name: "SeedCoins",
                    ),
                    LMTopIcon(
                      isSelected: false,
                      iconRoute: "assets/lateral_menu/lmi3.jpg",
                      name: "WeSocial",
                    ),
                    LMTopIcon(
                      isSelected: false,
                      iconRoute: "assets/lateral_menu/lmi4.jpg",
                      name: "WeChat",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,
                                    child: ClipOval(
                                      child: Image.asset(
                                          "assets/lateral_menu/lmpp.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16,
                                    bottom: 0,
                                    child: ClipOval(
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        color: const Color(0xff06d199),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Image.asset(
                                            "assets/lateral_menu/lmppi.jpg",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .fontWeight,
                                color: const Color(0xff424b5a),
                              ),
                            ),
                            Text(
                              "Entrepreneur - Power level 8",
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .fontWeight,
                                color: const Color(0xff738166),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/lateral_menu/lmbri.jpg",
                                width: 76,
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Current Balance",
                                    style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .fontSize,
                                      fontWeight: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .fontWeight,
                                      color: const Color(0xff738166),
                                    ),
                                  ),
                                  Text(
                                    "200 Seed Coins",
                                    style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .fontSize,
                                      fontWeight: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .fontWeight,
                                      color: const Color(0xff06d199),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: OutlinedButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                    const BorderSide(
                                      color: Color(0xff454857),
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  foregroundColor: MaterialStateProperty.all(
                                    const Color(0xff454857),
                                  ),
                                ),
                                onPressed: null,
                                child: const Text("Add 50 seeds")),
                          )
                        ],
                      ),
                      const Divider(),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Next Power level",
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .fontWeight,
                                  color: const Color(0xff738166),
                                ),
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 6),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const LinearProgressIndicator(
                                        minHeight: 20,
                                        value: 0.6,
                                        backgroundColor: Color(0xffe6e6e6),
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Color(0xff06d199)),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        top: 6,
                                        right: 8,
                                        bottom: 8,
                                        left: 8,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color(0xff06d199),
                                              width: 2),
                                          color: Colors.white),
                                      child: Text(
                                        9.toString(),
                                        style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .fontSize,
                                          fontWeight: FontWeight.w800,
                                          color: const Color(0xff06d199),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Next Reward",
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .fontWeight,
                                  color: const Color(0xff738166),
                                ),
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 6),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const LinearProgressIndicator(
                                        minHeight: 20,
                                        value: 0.4,
                                        backgroundColor: Color(0xffe6e6e6),
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Color(0xff034076)),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        top: 6,
                                        right: 8,
                                        bottom: 8,
                                        left: 8,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color(0xff034076),
                                              width: 2),
                                          color: Colors.white),
                                      child: Text(
                                        2.toString(),
                                        style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .fontSize,
                                          fontWeight: FontWeight.w800,
                                          color: const Color(0xff034076),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color(0xffe8e8e8),
                ),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.account_circle_rounded)),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.calendar_month_rounded),
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.settings)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
