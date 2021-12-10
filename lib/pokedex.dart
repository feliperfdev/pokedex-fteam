import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';
import 'package:pokedex_screen/widgets/analogic_button.dart';
import 'package:pokedex_screen/widgets/dex_button.dart';
import 'package:pokedex_screen/widgets/directional.dart';
import 'package:pokedex_screen/widgets/green_button.dart';
import 'package:pokedex_screen/widgets/hinge/hinge_small_rectangle.dart';
import 'package:pokedex_screen/widgets/hinge/middle_hinge.dart';
import 'package:pokedex_screen/widgets/hinge/top_hinge.dart';
import 'package:pokedex_screen/widgets/lamp.dart';
import 'package:pokedex_screen/widgets/light_lamp.dart';
import 'package:pokedex_screen/widgets/pikachu/eye.dart';
import 'package:pokedex_screen/widgets/pikachu/body.dart';
import 'package:pokedex_screen/widgets/screen.dart';
import 'package:pokedex_screen/widgets/screen_frame.dart';
import 'package:pokedex_screen/widgets/top_side.dart';

import 'widgets/led.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.screenFrameBorder,
      body: Stack(
        children: [
          TopSide(
            top: 0,
            height: size.height * .23,
            color: AppColors.topBorderShadow,
          ),
          TopSide(
            top: 0,
            height: size.height * .216,
          ),
          Lamp(
            top: size.height * .039,
            left: size.width * .077,
            size: size.height * .1319,
            lightWidget: LightLamp(size: size.height * .02),
          ),
          Led(
            size: size.height * .018,
            top: size.height * .037,
            left: size.width * .35,
            type: LedType.red,
          ),
          Led(
            size: size.height * .018,
            top: size.height * .037,
            left: size.width * .416,
            type: LedType.yellow,
          ),
          Led(
            size: size.height * .018,
            top: size.height * .037,
            left: size.width * .48,
            type: LedType.green,
          ),
          ScreenFrame(
            height: size.height * .3538,
            width: size.width * .768,
            top: size.height * .3,
            left: size.width * .064,
            centerChild: Screen(
              height: size.height * .24,
              width: size.width * .626,
            ),
          ),
          AnalogicButton(
            bottom: size.height * .18,
            left: size.width * .07,
          ),
          DexButton(
            bottom: size.height * .26,
            left: size.width * .27,
            type: ButtonType.select,
          ),
          DexButton(
            bottom: size.height * .26,
            left: size.width * .45,
            type: ButtonType.start,
          ),
          GreenButton(
            bottom: size.height * .126,
            left: size.width * .264,
          ),
          Directional(
            right: size.width * .136,
            bottom: size.height * .109,
          ),
          TopHinge(
            height: size.height * .124,
            top: size.height * .1019,
            right: 0,
          ),
          MiddleHinge(
            height: size.height * .613,
            top: size.height * .23,
            right: 0,
          ),
          HingeSmallRectangle(
            height: size.height * .0075,
            top: size.height * .847,
            right: 0,
          ),
        ],
      ),
    );
  }
}
