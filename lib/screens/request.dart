import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  final LatLng _center = const LatLng(6.9271, 79.8612);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Change Location'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.list_alt))
          ],
        ),
        body: Column(
          children: [
            Container(
              child: GoogleMap(
                onMapCreated: (GoogleMapController controller) {},
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 10.0,
                ),
              ),
            ),
            SizedBox(
              height: 280.0,
            ),
            Container(
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFF5F5F5)),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 90.0,
                        height: 140.0,
                        color: Color.fromARGB(255, 184, 182, 178),
                        child: Column(
                          children: [
                            Text('1 Min'),
                            Container(
                              width: 40.0,
                              height: 34.0,
                              decoration: ShapeDecoration(
                                  shape: OvalBorder(),
                                  color: Colors.lightBlueAccent),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.car_rental_rounded)),
                            ),
                            Text('MINI'),
                            TextButton(
                                onPressed: () {}, child: Text('Rs.181.00'))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                          width: 90.0,
                          height: 140.0,
                          color: Color.fromARGB(255, 184, 182, 178),
                          child: Column(
                            children: [
                              Text('1 Min'),
                              Container(
                                width: 40.0,
                                height: 34.0,
                                decoration: ShapeDecoration(
                                    shape: OvalBorder(),
                                    color: Colors.lightBlueAccent),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.car_rental_rounded)),
                              ),
                              Text('Prime'),
                              TextButton(
                                  onPressed: () {}, child: Text('Rs.171.00'))
                            ],
                          )),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                          width: 90.0,
                          height: 140.0,
                          color: Color.fromARGB(255, 184, 182, 178),
                          child: Column(
                            children: [
                              Text('1 Min'),
                              Positioned(
                                  top: 60.0,
                                  left: 9.0,
                                  child: Container(
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(),
                                        color: Colors.amberAccent),
                                    child: Text('Pool'),
                                  )),
                              Container(
                                width: 40.0,
                                height: 34.0,
                                decoration: ShapeDecoration(
                                    shape: OvalBorder(),
                                    color: Colors.lightBlueAccent),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.car_rental_rounded)),
                              ),
                              Text('Pool'),
                              TextButton(
                                  onPressed: () {}, child: Text('Rs.181.00'))
                            ],
                          )),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                          width: 90.0,
                          height: 140.0,
                          color: Color.fromARGB(255, 184, 182, 178),
                          child: Column(
                            children: [
                              Text('1 Min'),
                              Container(
                                width: 40.0,
                                height: 34.0,
                                decoration: ShapeDecoration(
                                    shape: OvalBorder(),
                                    color: Colors.lightBlueAccent),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bike_scooter)),
                              ),
                              Text('Bike'),
                              TextButton(
                                  onPressed: () {}, child: Text('Rs.181.00'))
                            ],
                          )),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                          width: 90.0,
                          height: 140.0,
                          color: Color.fromARGB(255, 184, 182, 178),
                          child: Column(
                            children: [
                              Text('1 Min'),
                              Container(
                                width: 40.0,
                                height: 34.0,
                                decoration: ShapeDecoration(
                                    shape: OvalBorder(),
                                    color: Colors.lightBlueAccent),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.car_rental_rounded)),
                              ),
                              Text('MINI'),
                              TextButton(
                                  onPressed: () {}, child: Text('Rs.181.00'))
                            ],
                          )),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                          width: 90.0,
                          height: 140.0,
                          color: Color.fromARGB(255, 184, 182, 178),
                          child: Column(
                            children: [
                              Text('1 Min'),
                              Container(
                                width: 40.0,
                                height: 34.0,
                                decoration: ShapeDecoration(
                                    shape: OvalBorder(),
                                    color: Colors.lightBlueAccent),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.car_rental_rounded)),
                              ),
                              Text('MINI'),
                              TextButton(
                                  onPressed: () {}, child: Text('Rs.181.00'))
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 400,
                  height: 17,
                  child: Text(
                    '\$0.28/min waiting fee applies after 2min of arrival till trip starts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.amberAccent,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('Cash'),
                  SizedBox(
                    width: 160.0,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'CHANGE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent.shade400,

                        // Background color
                      ),
                      child: Text('REQUEST')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.refresh)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
