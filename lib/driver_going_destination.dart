import 'package:flutter/material.dart';

class DriverGoingDestinScreen extends StatefulWidget {
  const DriverGoingDestinScreen({super.key});

  @override
  State<DriverGoingDestinScreen> createState() =>
      _DriverGoingDestinScreenState();
}

class _DriverGoingDestinScreenState extends State<DriverGoingDestinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reaching to customer'),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            khali(),
            rideAccepting(),
          ],
        ),
      ),
    );
  }
}

// Widget mapBack() {
//   return Expanded(
//     child: GoogleMap(
//       controller: _model.googleMapsController,
//       onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
//       initialLocation: _model.googleMapsCenter ??=
//           LatLng(13.106061, -59.613158),
//       markerColor: GoogleMarkerColor.violet,
//       mapType: MapType.normal,
//       style: GoogleMapStyle.standard,
//       initialZoom: 14,
//       allowInteraction: true,
//       allowZoom: true,
//       showZoomControls: true,
//       showLocation: true,
//       showCompass: false,
//       showMapToolbar: false,
//       showTraffic: false,
//       centerMapOnMarkerTap: true,
//     ),
//   );
// }

Widget khali() {
  return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
      ));
}

Widget rideAccepting() {
  return Expanded(
    flex: 1,
    child: Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        //color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.white,
            offset: Offset(0, -1),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            activeRideCard(),
          ],
        ),
      ),
    ),
  );
}

Widget activeRideCard() {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Container(
      width: double.infinity,
      height: 250,
      //color: Colors.green,
      // decoration: BoxDecoration(
      //   color: Colors.black,
      //   borderRadius: BorderRadius.circular(2),
      //),
      child: Card(
        //clipBehavior: Clip.antiAliasWithSaveLayer,
        //elevation: 4,
        surfaceTintColor: Colors.white,
        //color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: AlignmentDirectional(-1, -1),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  //decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ride Placed',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'RS.200.00',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 335,
              height: 67,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              // ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.radio_button_unchecked,
                          color: Colors.black,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            '21 neon St. Park Avenue,CA',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.pin_drop,
                          color: Colors.black,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            'cermon earth space center',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 360,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      //width: 330,
                      height: 100,
                      // decoration: BoxDecoration(
                      //   color: Colors.white,
                      // ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'OTP :',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 38, 0),
                            child: Text(
                              '123456',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Text(
                            '09-01-2024',
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                            child: Text(
                              '07:28PM',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade200),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(255, 211, 0, 0.8),
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),

                    // ),

                    onPressed: () {},
                    child: const Text(
                      'CANCEL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 211, 0, 0.8)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),

                    // ),

                    onPressed: () {},
                    child: const Text(
                      'CALL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
