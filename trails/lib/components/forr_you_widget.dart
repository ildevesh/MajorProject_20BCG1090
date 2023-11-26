import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forr_you_model.dart';
export 'forr_you_model.dart';

class ForrYouWidget extends StatefulWidget {
  const ForrYouWidget({Key? key}) : super(key: key);

  @override
  _ForrYouWidgetState createState() => _ForrYouWidgetState();
}

class _ForrYouWidgetState extends State<ForrYouWidget> {
  late ForrYouModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForrYouModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180.0,
      child: CarouselSlider(
        items: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://picsum.photos/seed/472/600',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://picsum.photos/seed/994/600',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://picsum.photos/seed/765/600',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://picsum.photos/seed/413/600',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
        carouselController: _model.carouselController ??= CarouselController(),
        options: CarouselOptions(
          initialPage: 1,
          viewportFraction: 0.5,
          disableCenter: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.25,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayInterval: Duration(milliseconds: 4000),
          autoPlayCurve: Curves.linear,
          pauseAutoPlayInFiniteScroll: true,
          onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
        ),
      ),
    );
  }
}
