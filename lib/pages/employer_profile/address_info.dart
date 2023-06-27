import 'package:flutter/material.dart';
import 'package:visan_portal/pages/employer_profile/address_info2.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/progress_indicator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressInfo extends StatefulWidget {
  const AddressInfo({Key? key}) : super(key: key);

  
  @override
  State<AddressInfo> createState() => AddressInfoState();
}

class AddressInfoState extends State<AddressInfo> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ProgressIndication(
                      text: '2 OF 4',
                      percent: .50,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Address Information',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )),
              ],
            ),
            CustomTextField(label: 'Street Address'),
            CustomTextField(label: 'Area', required: true),
            CustomTextField(label: 'City', required: true),
            CustomTextField(label: 'Pincode', required: true),
            CustomTextField(label: 'State', required: true),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Text('Select Address from Map',
                  style: TextStyle(
                      color: Color.fromARGB(255, 66, 66, 66),
                      fontFamily: 'Open Sans',
                      fontSize: 16),
                  textAlign: TextAlign.start),
            ),
            SizedBox(height: 10),
            Stack(children: [
              SizedBox(
                height: 250,
                width: 400,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: Container(
                    width: 23,
                    height: 23,
                    color: Color.fromARGB(255, 235, 235, 235),
                    child: Icon(
                      Icons.location_searching_outlined,
                      color: Color.fromARGB(255, 117, 117, 117),
                    )),
              )
            ]),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              height: 80,
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Color.fromARGB(255, 0, 0, 0),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 11, 88, 131),
                                    width: 1),
                                minimumSize: Size(90, 45)),
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            })),
                    SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: CustomButton(
                          text: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddressInfo2()),
                            );
                          },
                        ))
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
