import 'package:flutter/material.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/sections_provider.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/banner.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/categoreis.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/provider_header.dart';
import 'package:project_amber/Features/component/last_line.dart';

class ProviderViewBody extends StatelessWidget {
  const ProviderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(height: 20),
            ProviderHeader(),
            SizedBox(height: 10),
            BannerCard(),
            SizedBox(
                width: MediaQuery.of(context).size.width * .99,
                child: Categories()),
            SizedBox(height: 10),
            sectionsProvider(),

            // LastLine(),
          ],
        ),
      ),
    ));
  }
}
