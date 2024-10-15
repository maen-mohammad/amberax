import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/text_form.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class RequestSubscription extends StatelessWidget {
  const RequestSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Request a subscription",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Column(
                  children: [
                    Text(
                      "Request a subscription",
                      style: TextStyle(
                          color: AppColor.kOrang,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Enter the details to Request a subscription ",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: RequestSubscriptionForm()),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                
                // OpenStreetMapSearchAndPick(
                //   buttonTextStyle: const TextStyle(
                //       fontSize: 18, fontStyle: FontStyle.normal),
                //   buttonColor: Colors.blue,
                //   buttonText: 'Set Current Location',
                //   onPicked: (pickedData) {
                //     print(pickedData.latLong.latitude);
                //     print(pickedData.latLong.longitude);
                //     print(pickedData.address);
                //     print(pickedData.addressName);
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RequestSubscriptionForm extends StatelessWidget {
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.95,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(children: [
        TextForm(
          bol: true,
          textLabel: "Name",
          textHint: 'Osama ',
          svgIcons: "assets/icons/User.svg",
          onTap: () {
            print("Password");
          },
          type: TextInputType.text,
        ),
        SizedBox(
          height: 30,
        ),
        TextForm(
          bol: true,
          textLabel: "E-mail",
          textHint: 'Osamarjab@gmail.com',
          svgIcons: "assets/icons/Mail.svg",
          onTap: () {},
          type: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 30,
        ),
        CountryStateCityPicker(
            country: country,
            state: state,
            city: city,
            dialogColor: Colors.grey.shade200,
            textFieldDecoration: InputDecoration(
                fillColor: Colors.blueGrey.shade100,
                filled: true,
                suffixIcon: const Icon(Icons.arrow_downward_rounded),
                border: const OutlineInputBorder(borderSide: BorderSide.none))),
        SizedBox(
          height: 30,
        ),
        //Text("${country.text}, ${state.text}, ${city.text}"),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        DefaultButton(
          onTap: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
          ),
          text: "subscription",
        ),
        
        SizedBox(
          height: 10,
        ),
      ]),
    ));
  }
}
