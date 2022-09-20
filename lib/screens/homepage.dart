import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../widgets/appheadingtext.dart';
import '../widgets/containers.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? _value=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Corner Field"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:SingleChildScrollView(
            child: Column(

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Text("Zone 3"),

                    Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.close)),

                  ],

                ),
                const SizedBox(
                  height: 10,

                ),
                const Text("Soil Water Status"),
                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Column(
                      children: [


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("1ft"),
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                // color: Colors.red,
                                child: Stack(
                                    children: [

                                      Positioned(
                                        top: 22,
                                        child: Center(
                                            child: AppContainer(height: 70,width: 100,text: '2.48"',colour: Colors.green,textcolor: Colors.white,fontsize: 20,)),
                                      ),
                                      Positioned(
                                        left: 20,
                                        right: 20,
                                        top:-10,
                                        child: Image.asset('assets/images/icons8-growing-plant-50.png'),
                                      ),


                                    ]
                                )
                            )

                          ],

                        ),
                        const SizedBox(
                          height:15,
                        ),
                        Row(
                          children: [
                            Text("2ft"),
                            Container(
                                height: 70,
                                width: 100,
                                // color: Colors.red,
                                child: Stack(
                                    children: [
                                      Positioned(
                                        child: Center(
                                            child: AppContainer(height: 70,width: 100,text: '3.11"',colour: Colors.green,textcolor: Colors.white,fontsize: 20,)),
                                      )]
                                )
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("3ft"),
                            Container(
                                height: 70,
                                width: 100,
                                //color: Colors.red,
                                child: Stack(
                                    children: [
                                      Positioned(

                                        child: Center(
                                            child: AppContainer(height: 70,width: 100,text: '3.19"',colour: Colors.green,textcolor: Colors.white,fontsize: 20,)),
                                      )]
                                )
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,

                    ),
                    Column(

                      children: [
                        Container(
                          height: 140,
                          width: 200,
                          decoration: BoxDecoration(
                            // color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              border:Border.all(color: Colors.yellow)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("Water in Profile",style: TextStyle(color: Colors.black,fontSize: 15),),

                              ),
                              SizedBox(height:20),
                              Center(child: Text("8.78${'"'}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("72% Full",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 140,
                          width: 200,
                          decoration: BoxDecoration(
                            // color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              border:Border.all(color: Colors.yellow)

                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("To Retail Profile",style: TextStyle(color: Colors.black,fontSize: 15),),

                              ),
                              SizedBox(height:20),
                              Center(child: Text("3.46${'"'}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),)),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(5)

                                ),
                                child: Center(child: Text("Details",style: TextStyle(fontSize: 12),)),
                              )

                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Forecast- Next 0 Days "),
                SfSlider(
                  activeColor:  Colors.red,
                  inactiveColor: Colors.yellow,
                  min: 0.0,
                  stepSize:1 ,
                  max: 7.0,
                  value: _value,
                  interval: 1,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 0,
                  onChanged: (dynamic value){
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:45,),
                          child: Container(
                            height: 80,
                            width:120,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                border: Border.all(color: Colors.yellow)
                            ),
                            child: Column(
                              children: [
                                AppSubHeadingText(text: "Water Out",),
                                Row(
                                  children: [

                                    Image.asset('assets/images/icons8-plant-80.png',height:50,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    AppSubHeadingText(text: '0.19"',size: 25,),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 80,
                          width:120,
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              border: Border.all(color: Colors.yellow)
                          ),
                          child: Column(
                            children: [
                              AppSubHeadingText(text: "Water In",),
                              Row(
                                children: [
                                  Image.asset('assets/images/icons8-rain-cloud-80.png',height:50,),
                                  SizedBox(width: 10,),
                                  AppSubHeadingText(text: '0.0"',size: 25,),
                                ],
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top:42),
                      child: Container(
                        height: 170,
                        width:190,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            border: Border.all(color: Colors.yellow)
                        ),
                        child: Column(
                          children: [
                            AppSubHeadingText(text: "Water Needed",),
                            Image.asset('assets/images/icons8-rain-cloud-80.png',height:50,),
                            SizedBox(height: 5,),
                            Image.asset('assets/images/icons8-growing-plant-50.png',height:50,),
                            SizedBox(height: 10,),

                            AppSubHeadingText(text: '3.65"',size: 25,),

                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],


            ),
          ),


        ),
      ),
    );
  }
}
