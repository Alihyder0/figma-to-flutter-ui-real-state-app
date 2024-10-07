import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_rent/app_style.dart';
import 'package:home_rent/size_config.dart';

class myVerticalPrizeList extends StatelessWidget {
  const myVerticalPrizeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kPadding24),
      height: 70 ,
    width: 305,
    decoration: BoxDecoration(

      color: kwhite
    ),
      child: Row(
        children: [
          Container(
            width: 74,
            height: 70,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 18),
                      spreadRadius: 0,
                      blurRadius: 18,
                      color: kblack.withOpacity(0.1)
                  )
                ],
              borderRadius: BorderRadius.circular(kPadding8),
              image: DecorationImage(image: NetworkImage('https://www.mydomaine.com/thmb/bepet4VMGUG70sCLFNQRdZm9bbg=/2048x0/filters:no_upscale():strip_icc()/SuCasaDesign-Modern-9335be77ca0446c7883c5cf8d974e47c.jpg',
              ),
                  fit: BoxFit.cover)
            ),
          ),
          SizedBox(width: kPadding24,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Orchad House',style: kRalewayMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal!*5,
                ),),
                SizedBox(height: SizeConfig.blockSizeVertical!*0.5,),
                Text('Rp. 2.500.000.000 / Year',style: kRalewayRegular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal!*3.5,
                  color: kBlue
                ),),
                Expanded(child: 
                Row(
                  children: [
                    SvgPicture.asset('assets/icon_bedroom.svg'),
                    SizedBox(width: kPadding8,),
                    Text('6 Bedroom',style: kRalewayRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*3.8,
                        color: kGrey8E
                    ),),
                    SizedBox(width: kPadding16,),
                    SvgPicture.asset('assets/icon_bathroom.svg'),
                    SizedBox(width: kPadding8,),
                    Text('6 Bedroom',style: kRalewayRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*3.8,
                        color: kGrey8E
                    ),)
                  ],
                )
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
