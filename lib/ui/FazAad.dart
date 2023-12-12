import 'package:flutter/material.dart';
import 'package:app/data/ui.dart' as app;

class FazAad extends StatelessWidget {
  const FazAad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double aspect = MediaQuery.of(context).size.aspectRatio;

    double adaptive() {
      if (width == height) {
        if (width < 360)
          return .7;
        else if (width > 600)
          return 1.25;
        else if (width > 900)
          return 1.5;
        else if (width > 1200)
          return 1.75;
        else if (width > 1500) return 2.0;
      } else if (width < height) {
        //Potrait
        if (width < 360)
          return .7;
        else if (width < 380)
          return .85;
        else if (width > 600)
          return 1.25;
        else if (width > 900)
          return 1.5;
        else if (width > 1200)
          return 1.75;
        else if (width > 1500) return 2.0;
      } else if (width > height) {
        //Landscape
        if (height < 360)
          return .7;
        else if (height < 380)
          return .85;
        else if (height > 600)
          return 1.25;
        else if (height > 900)
          return 1.5;
        else if (height > 1200)
          return 1.75;
        else if (height > 1500) return 2.0;
      }
      return 1;
    } //Differnt resolutions

    double responsive() {
      if (width == height) {
        return width;
      } else if (width < height) {
        //Potrait
        return height;
      } else {
        //Landscape
        return width;
      }
      return width;
    } //Potrait or landscape

    double paddin() {
      if (width == height) {
        return 10;
      } else if (width < height) {
        //Potrait
        return 10;
      } else {
        //Landscape
        return width / 4;
      }
      return width;
    } // Responsive Padding

    num adapt = num.parse(adaptive().toString()); //Differnt resolutions
    num response = num.parse(responsive().toString()); //Potrait or landscape
    double adapt_double =
        double.parse(adaptive().toString()); //Differnt resolutions
    double response_double =
        double.parse(responsive().toString()); //Potrait or landscape
    double paddin_double =
        double.parse(paddin().toString()); //Padding for Squaring out

    TransformationController controllerT = TransformationController();
    var initialControllerValue;

    return MaterialApp(
      title: 'SPC',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "huhu",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 15 * adapt_double,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand',
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: InteractiveViewer(
            minScale: 1.0,
            maxScale: 100.0,
            transformationController: controllerT,
            onInteractionStart: (details) {
              initialControllerValue = controllerT.value;
            },
            onInteractionEnd: (details) {
              controllerT.value = initialControllerValue;
            },
            clipBehavior: Clip.none,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: width,
                  height: width * .525,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Colors.red,
                        app.ColorPalette.redBackground,
                      ],
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.gif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  //Gradient Behind Text
                  height: 90 * adapt_double,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.25),
                        Colors.grey.withOpacity(0),
                      ],
                      stops: [
                        0,
                        0.25,
                        .5,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  child: SizedBox(
                    width: adapt * response * .4,
                    child: Container(
                      child: Text(
                        "hehe",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 30 * adapt_double,
                          // fontWeight:
                          //     FontWeight.bold,
                          fontFamily: 'SmoochSans',
                          color: Colors.white.withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
