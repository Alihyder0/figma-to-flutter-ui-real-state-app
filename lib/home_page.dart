import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_rent/app_style.dart';
import 'package:home_rent/myVerticalPrizeList.dart';
import 'package:home_rent/product_detail_page.dart';
import 'package:home_rent/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  List<String> categories = [
    "House",
    "Appartment",
    "Hotel",
    "Villa",
    "Cottage",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(
                    horizontal: kPadding20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Lacation', style: kRalewayRegular.copyWith(
                            color: kGrey83,
                            fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                          ),),
                          SizedBox(height: SizeConfig.blockSizeVertical!*0.5,),
                          Row(
                            children: [
                              Text('Jakarta' , style: kRalewayMedium.copyWith(
                            color: kblack,
                            fontSize: SizeConfig.blockSizeHorizontal!*5,
                          ), ),
                              SizedBox(width: SizeConfig.blockSizeHorizontal!*0.5,),
                              SvgPicture.asset('assets/icon_dropdown.svg'),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset('assets/icon_notification_has_notif.svg')
                    ],
                  ),
                  ),


                ],
              ),
            SizedBox(height: kPadding24,),
            Padding(padding: EdgeInsets.symmetric(horizontal: kPadding20),
            child: Row(
              children: [
                Expanded(child:
                TextField(
                  style: kRalewayRegular.copyWith(
                    color: kblack,
                    fontSize: SizeConfig.blockSizeHorizontal!*3
                  ),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: kPadding16),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(kPadding8),
                      child: SvgPicture.asset('assets/icon_search.svg'),
                    ),
                    hintText: 'Search Address',
                    border: kInputBorder,
                    errorBorder: kInputBorder,
                    disabledBorder: kInputBorder,
                    focusedBorder: kInputBorder,
                    enabledBorder: kInputBorder,
                    hintStyle: kRalewayRegular.copyWith(
                      color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal!*3,
                    ),
                    filled: true,
                    fillColor: kwhitef7
                  ),

                  )),
                SizedBox(width: SizeConfig.blockSizeHorizontal!*2.5,),
                Container(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius10),
                    gradient: klinearGradientblue
                  ),
                  child: SvgPicture.asset('assets/icon_filter.svg'),

                )
              ],
            ),),
              SizedBox(height: kPadding24,),
              SizedBox(
                width: double.infinity,
                height: 34,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                    itemBuilder: (context ,index){
                    return GestureDetector(
                      onTap:  (){
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? kPadding20 :  12,
                          right: index == categories.length -1 ? kPadding20 : 0,
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: kPadding16),
                        height: 24,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: Offset(0, 18),
                              blurRadius: 18,
                              color: current == index
                                ? kBlue.withOpacity(0.1)
                                  : kBlue.withOpacity(0),
                            )
                          ],
                          gradient: current == index
                            ? klinearGradientblue
                              : klinearGradientwhite,
                          borderRadius: BorderRadius.circular(
                              kBorderRadius10,
                          ),

                        ),
                        child: Center(
                          child: Text(categories[index],
                          style: kRalewayMedium.copyWith(
                            color: current == index ? kwhite : kGrey85,
                            fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                          ),),
                        ),

                      ),
                    );

                    }),


              ),
              SizedBox(height: kPadding24,),
              Padding(padding: EdgeInsets.symmetric(
                horizontal: kPadding20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Near from you',style: kRalewayMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal!*4,

                  ),),
                  Text('See more',style: kRalewayMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                    color: kGrey8E

                  ),),
                  
                ],
              ),),
              SizedBox(height: kPadding24,),
              SizedBox(height: 272,
              child: ListView.builder(
                itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index){

                    return GestureDetector(
                      onTap: (()=> Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> ProductDetailPage()))),
                    child: Container(
                      height: 272,
                      width: 222,
                      margin: EdgeInsets.only(
                        left: kPadding20,
                        right: index == 5-1 ? kPadding20 : 0
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            offset: const Offset(0, 18),
                            blurRadius: 18,
                            color: kblack.withOpacity(0.1)
                          ),
                        ],

                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: NetworkImage(
                            'https://img.freepik.com/premium-photo/big-american-house-generative-ai_170984-9624.jpg',
                        ),
                        )
                      ),
                      child : Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter ,
                          child: Container(
                            height: 136,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                    kBorderRadius20),
                                bottomRight: Radius.circular(
                                  kBorderRadius20
                                )
                              ),
                              gradient: klinearGradientblack
                            ),
                          ),
                          ),
                          Align(
                            alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: kPadding16,
                              vertical: kPadding20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          kBorderRadius20,
                                        ),
                                        color: kblack.withOpacity(0.24),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: kPadding8,
                                        vertical: kPadding8,
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset('assets/icon_pinpoint.svg'),
                                          SizedBox(
                                            width: kPadding4,
                                            
                                          ),
                                          Text('1.8 km',style: kRalewayRegular.copyWith(
                                            color: kwhite,
                                            fontSize: SizeConfig.blockSizeHorizontal!*3.5
                                          ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text('Dreamsville House',style: kRalewayMedium.copyWith(
                                       color: kwhite,
                                       fontSize: SizeConfig.blockSizeHorizontal!*4
                                     ),

                                     ),
                                     SizedBox(height: SizeConfig.blockSizeVertical!*0.5,),
                                     Text('Jl. Sultan Iskandar Muda',style: kRalewayMedium.copyWith(
                                         color: kwhite,
                                         fontSize: SizeConfig.blockSizeHorizontal!*4
                                     ),
                                     ),
                                   ],
                                )
                              ],
                            ),
                          ),
                          )
                        ],
                      ) ,
                    ),
                    );
                  }),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical!*4,
              ),
              Padding(
                padding: EdgeInsets.symmetric( horizontal: kPadding20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Best for you',style: kRalewayMedium.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*5,
                        ),),
                        Text('See more',style: kRalewayRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                          color: kGrey8E
                        ),),
                      ],
                    ),
                    SizedBox(height: kPadding24,),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                        itemBuilder: (context,index) {
                      return myVerticalPrizeList();
                    }
                    )
                  ],
                ),
              )


            ],
          ),

        ),
      ),
    );
  }
}
