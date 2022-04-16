import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 4, 78),
        leading: Icon(Icons.account_circle_rounded),
        title: Row(
          children: [
            Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAAmVBMVEX/mTMSiAf/////lycAgQAAAIgAAIUAAH4AAIIAAIMAAHwAAHPi4u+kpMvz8/kAAHjn5/Lt7fXd3ey5uddPT6GZmcWDg7n6+v7Ly+HIyOJERJxlZao+PponJ5L29vy0tNbW1uggIJCfn8iGhrsYGJBNTaB2drQQEIx+fripqc5ra62QkMBXV6QiIpFfX6i+vtwyMpw6Opg1NZe0gadDAAAEvUlEQVR4nO3ba3OiSBiG4UzvdDcip8YDiAdQZAIxExP//4/btzHjZH1Nze6HpVPlc1Ul0eiH9g7Q2JKHBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACA/+gvuPYg4BqacGjCoQmHJhyacF+hSTI5LFd7uV8tD5PE9WDEF2gSHNbaGyklpVRq5Omfh8D1kBw3qaZ6pCiGVFrr/oYc6SZ3OyinTZIpdZCeevnhNyY1jf/jRXm0vejG6S7kssnObhmeNxMbcTSiEuZIt2aeZ7eancNxOWzy7NFrn3cnI/p9pbTfcmFO3ZxaeVN3A3PWJNrS5lAEmb3d5wgvt7KgoMe2kauhuWoSPdK2QHvIwt5ZpPTtQF/p+S7tVbQNPbqK4qhJRluJ17VGZB3di2yPF/o62AxdJkzbUZRt5mZwjpo0lOTY3wrtFGMPHq/vP5N+JxJHiuLomOKmycyTXinOUewLX1IYSTmW7/cpiSjpOTMno3PSJNA049TnQ4gIae8J6cVrSkWbSNdvJvRITbOPdnJO66RJo1QzM3RjaY8YMhLVVmR+JraViGhzEZn9vZnZp7kYnosmCy31+UR180oH1a4QWWyiODJxJhqajaPTpn80oee5OM130WSlVL3pZ11hJO0daiLWITUJ12KiaM+Spn9ssamVKhyMz0GTVNsDrOi6/o5fiVKLdmVis2qFLkXl27OV/rhCh1mdDj9AB01qmoftnz+Z2ir5+Cjk08JP49RfPElxHNvdpZvao2vhyVE9/AAdNHmkOfZ8ihpK2l4m4y4fJ7ryKp2M8248oe1D7vrHDc3Z++EHOHwTmojlr9tRISciHB/beZ3v87puj+OdmMiV+fUE6WI6Hr5J6amnaFEuzptK6av8GAfrKmzDah3Ex/zR798Iik1e5tGT8srBRzh8k7lSLf1ID9NlWNF5yHLcBuugLd6KNl0H87E9N0m7p+Zgj66tUvPBRzh8k2cl/fNZRzLbxut2kczXaWFXIEdFsG6TfH6KH2fnPSb3pXoefITDN3lVanpZBTDhytd12o6kNWrTg/ZPu8vKYzRV6nXwEQ7fRErvkiSLIpNWeViovokqdnmVmii6LBJE3u8D8mCcNEmqYzhbnqT2/TiOvX37Js/e6q1Hv4l9LX8+H8IyT++mCbaTK1fHkzccTz7OO8Hveafp550mWM/vct6Zn085cH7ywe3z2JTOY9O7PY/F+50b9vS++PyiP3tfPLm398WiHv15/aTs109Wd7N+gnW2G4p/uR6b3c96rMiv1u2bT9btgztat+8/3zmY989xbn6+I+7t8x18DngLPi++YYrrChhcf3IDrlO6IdqOpCpSXM/2D/11j234yXWPwy+bXOD6WO5rXkc9vdvrqAWut78N/5dx08f/3zF/fvr/7is0+WrQhEMTDk04NOHQhHv4DtcevsE1NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMTDk04NOHQhEMT7m/cNifkUwM0UQAAAABJRU5ErkJggg==",height:15,width:15),
            SizedBox(width: 3,),
            Text("India"),
          ],
        ),
        actions: [
          Icon(Icons.qr_code_scanner_rounded),
          SizedBox(width: 10,),
          Icon(Icons.notifications_none),
          SizedBox(width: 10,),
          Icon(Icons.help_outline_sharp)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                    SizedBox(
                 width: 250,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://th.bing.com/th/id/OIP.JPkKGwc2zRhSBczjyjSHggHaEB?w=305&h=180&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://th.bing.com/th/id/OIP.0PmiBhW2omwIoSZ4gUtG8QHaEB?w=339&h=184&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://th.bing.com/th/id/OIP.xrMhK-Ci9VXOdgoo_HIpSwHaFK?w=259&h=180&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),    
                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                height: 208,
                width: 320,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Transfer Money",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ), 
                          )),
                      ),
                        SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 7, 4, 78),),
                                  child: Icon(Icons.person_outline,color: Colors.white,)
                                ),
                                SizedBox(height: 5),
                                Text("To Mobile"),
                                SizedBox(height: 3),
                                Text("Number")
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 7, 4, 78),),
                                  child: Icon(Icons.card_travel,color: Colors.white,),
                                ),
                                SizedBox(height: 5),
                                Text("To Wallet"),
                                SizedBox(height: 3),
                                Text("Assets")
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                             color: Color.fromARGB(255, 7, 4, 78),),
                                
                                  child: Icon(Icons.assured_workload,color: Colors.white,),
                                ),
                                SizedBox(height: 5),
                                Text("Check Bank"),
                                SizedBox(height: 3),
                                Text("Balance")
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 26,),
                      Container(
                        margin: EdgeInsets.only(bottom: 0),
                        //height: 50,
                        //width: 550,
                        color: Colors.blue.shade200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text.rich(
                                TextSpan(
                                  text: "My UPI ID",style: TextStyle(fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: ": 9874913864@sbi",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal
                                      )
                                    ),
                                  ]
                                ),
                              ),
                            ),
                           Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
                      Row(
                        children: [
                         SizedBox(
                           width: 125,
                           height: 60,
                           child: Card(
                             color: Colors.blue,
                             child: Padding(
                               padding: const EdgeInsets.all(2.0),
                               child: Column(
                                 children: [
                                   Icon(Icons.percent,color: Colors.white,),
                                   Text("Offers",style: TextStyle(color: Colors.white),)
                                 ],
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: 60,
                           width: 125,
                           child: Card(
                             color: Colors.blue,
                             child: Padding(
                               padding: const EdgeInsets.all(2.0),
                               child: Column(
                                 children: [
                                   Icon(Icons.card_giftcard,color: Colors.white,),
                                   Text("Rewards",style: TextStyle(color: Colors.white),)
                                 ],
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           width: 125,
                           height: 60,
                           child: Card(
                             color: Colors.blue,
                             child: Padding(
                               padding: const EdgeInsets.all(2.0),
                               child: Column(
                                 children: [
                                   Icon(Icons.mic,color: Colors.white,),
                                   Text("Refer & Earn",style: TextStyle(color: Colors.white),)
                                 ],
                               ),
                             ),
                           ),
                         )
                        ],
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 100,
                        width: 320,
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Sponsored Links")),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(height: 20,width: 20,
                                        decoration:BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://www.theknowhowlib.com/wp-content/uploads/2020/05/Swiggy-2-300x300.png"),
                                            fit: BoxFit.fill
                                          ),
                                          ),
                                          ),
                                        Text("Swiggy",style: TextStyle(
                                          fontSize: 12
                                        ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(height: 20,width: 20,
                                        decoration:BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://th.bing.com/th/id/OIP.ueYxAWTdTKIfYUf-Q_lCtAHaFj?w=232&h=180&c=7&r=0&o=5&pid=1.7"),
                                            fit: BoxFit.fill
                                          ),
                                          ),
                                          ),
                                        Text("Flights",style: TextStyle(
                                          fontSize: 12
                                        ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(height: 20,width: 20,
                                        decoration:BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://www.bing.com/th?id=OIP.21te6xS6ZMWpnTTFwdC7QAHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"),
                                            fit: BoxFit.fill
                                          ),
                                          ),
                                          ),
                                        Text("Flipkart",style: TextStyle(
                                          fontSize: 12
                                        ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(height: 20,width: 20,
                                        decoration:BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://th.bing.com/th/id/OIP.tIdN1Cr2XMdZufGXx7In9gHaHa?w=199&h=198&c=7&r=0&o=5&pid=1.7"),
                                            fit: BoxFit.fill
                                          ),
                                          ),
                                          ),
                                        Text("My11Cabin",
                                        style: TextStyle(
                                          fontSize: 12
                                        ),)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                     Row(
                children: [
                 
                  SizedBox(
                  width: 250,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://th.bing.com/th/id/OIP.JPkKGwc2zRhSBczjyjSHggHaEB?w=305&h=180&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://th.bing.com/th/id/OIP.0PmiBhW2omwIoSZ4gUtG8QHaEB?w=339&h=184&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://th.bing.com/th/id/OIP.xrMhK-Ci9VXOdgoo_HIpSwHaFK?w=259&h=180&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),  
                ],
              ),
            ]
            ),
        ),
      ),
    );
  }
}