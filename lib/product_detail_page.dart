import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_rent/app_style.dart';
import 'package:home_rent/size_config.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: kPadding4),
        height: 43,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Price',style: kRalewayRegular.copyWith(
                 fontSize: SizeConfig.blockSizeHorizontal!*3.0,
                 color: kGrey83
               ),),
               const SizedBox(height: kPadding4,),
               Text('Rp. 2.500.000.000 / Year',style: kRalewayMedium.copyWith(
                   fontSize: SizeConfig.blockSizeHorizontal!*4,
                   color: kblack
               ),),
             ],
            ),
            ),
            GestureDetector(
              onTap: (){
                debugPrint('Rent Now Tapped');
              },
              child: Container(
                height: 43,
                padding: const EdgeInsets.symmetric(horizontal: kPadding20),
                decoration: BoxDecoration(
                  gradient: klinearGradientblue,
                  borderRadius: BorderRadius.circular(kBorderRadius10),

                ),
                child: Center(
                  child: Text('Rent Now',style: kRalewaySemiBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal!*5,
                      color: kwhite
                  ),),
                ),
              ),
            )

          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                 height: 319,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       spreadRadius: 0,
                       offset: const Offset(0, 18),
                       blurRadius: 18,
                       color: kblack.withOpacity(0.1)
                     )
                   ],
                   borderRadius: BorderRadius.circular(kBorderRadius20),
                   image: const DecorationImage(
                       image: NetworkImage('https://img.freepik.com/premium-photo/big-american-house-generative-ai_170984-9624.jpg'),
                   fit: BoxFit.cover)

                 ),
                 child: Stack(
                   children: [
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Container(
                         height: 160,
                         decoration: BoxDecoration(
                           gradient: klinearGradientblack,
                           borderRadius: const BorderRadius.only(
                             bottomLeft: Radius.circular(kBorderRadius20),
                             bottomRight: Radius.circular(kBorderRadius20),
                           )
                         ),
                       ),
                     ),
                     Align(
                       alignment: Alignment.center,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(
                             horizontal: kPadding20,
                         vertical: kPadding20),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 CircleAvatar(
                                   radius: 17,
                                   backgroundColor: kblack.withOpacity(0.24),
                                   child: SvgPicture.asset('assets/icon_arrow_back.svg'),
                                 ),
                                 CircleAvatar(
                                   radius: 17,
                                   backgroundColor: kblack.withOpacity(0.24),
                                   child: SvgPicture.asset('assets/icon_bookmark.svg'),
                                 ),
                               ],
                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Dreamsville House',style: kRalewaySemiBold.copyWith(
                                   fontSize: SizeConfig.blockSizeHorizontal!*6,
                                   color: kwhite
                                 ),),
                                 const SizedBox(height: kPadding4,),
                                 Text('Jl. Sultan Iskandar Muda, Jakarta selatan',style: kRalewayRegular.copyWith(
                                     fontSize: SizeConfig.blockSizeHorizontal!*3,
                                     color: kwhite
                                 ),),
                                 const SizedBox(height: kPadding20,),
                                 Row(
                                   children: [
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(kBorderRadius10),
                                         color: kwhite.withOpacity(0.20)
                                       ),
                                       child: Center(
                                         child: SvgPicture.asset('assets/icon_bedroom.svg',colorFilter: const ColorFilter.mode(kwhite, BlendMode.srcIn),),
                                       ),
                                     ),
                                     const SizedBox(width: kPadding8,),
                                     Text('6 Bedroom',style: kRalewayRegular.copyWith(
                                         fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                                         color: kGrey
                                     ),),
                                     const SizedBox(width: kPadding32,),
                                     Container(
                                       height: 28,
                                       width: 28,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(kBorderRadius10),
                                           color: kwhite.withOpacity(0.20)
                                       ),
                                       child: Center(
                                         child: SvgPicture.asset('assets/icon_bathroom.svg',colorFilter: const ColorFilter.mode(kwhite, BlendMode.srcIn),),
                                       ),
                                     ),
                                     const SizedBox(width: kPadding8,),
                                     Text('4 Bathroom',style: kRalewayRegular.copyWith(
                                         fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                                         color: kGrey
                                     ),),
                                   ],
                                 )
                               ],
                             )
                           ],
                         ),
                       ),
                     )

                   ],
                 ),
               ),
              const SizedBox(height: kPadding20,),
              Text('Description',style: kRalewayMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal!*5,
              ),),
              const SizedBox(width: kPadding8,),
              ReadMoreText('The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars'
                  'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars.  ',
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: '...  ',
                trimCollapsedText: 'Show More',
                trimExpandedText: 'Show Less',
                style: kRalewayRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal!*3,
                    color: kGrey85
                ),
                moreStyle: kRalewayRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                    color: kBlue
                ),
                lessStyle: kRalewayRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                    color: kBlue
                ),
              ),
              const SizedBox(height: kPadding24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg'),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal!*4,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Gary Allen',style: kRalewayMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal!*4.5,

                          ),),

                          Text('Owner',style: kRalewayRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                            color: kGrey83

                          ),)
                        ],
                      ),

                    ],

                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: klightblue,
                          borderRadius: BorderRadius.circular(kBorderRadius10),
                        ),
                        child: Center(
                          child: SvgPicture.asset('assets/icon_phone.svg'),
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal!*4,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: klightblue,
                          borderRadius: BorderRadius.circular(kBorderRadius10),
                        ),
                        child: Center(
                          child: SvgPicture.asset('assets/icon_phone.svg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: kPadding32,),
              Text('Gallery',style: kRalewayMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal!*4.5,
              ),),
              const SizedBox(height: kPadding20,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    crossAxisSpacing: kPadding16,
                    childAspectRatio: 1
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      color: kBlue,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage('https://img.freepik.com/premium-photo/big-american-house-generative-ai_170984-9624.jpg'))
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: index == 4-1 ? kblack.withOpacity(0.30):null,
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                      ),
                      child: Center(
                        child: index == 4-1? Text('+5',style: kRalewayRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal!*5,
                            color: kwhite

                        ),):null
                      ),
                    ),
                  );

                  }),
              const SizedBox(height: kPadding32,),
              Container(
                height: 161,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/map_sample.png')
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child:Container(
                        height: 130,
                        decoration: BoxDecoration(
                          gradient: klinearGradientwhite,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadius20),
                            bottomRight: Radius.circular(kBorderRadius20),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: kPadding24,)
            ],

          ),
        ),
      ),
    );
  }
}
