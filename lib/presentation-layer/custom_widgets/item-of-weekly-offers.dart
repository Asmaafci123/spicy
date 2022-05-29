import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/custom_widgets/reusable-container-best-offers.dart';
import '../../size.dart';
import '../details-of-product.dart';
import 'descripe-product.dart';
class ItemOfWeeklyOffers extends StatelessWidget {
  const ItemOfWeeklyOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>DetailsOfProductScreen()
        ));
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.defaultSize! * 1.5,0,
            SizeConfig.defaultSize! * 1.5, 0),
        child: Stack(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 5)
              ),
              child: Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius:  BorderRadius.circular(SizeConfig.defaultSize! * 5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: SizeConfig.defaultSize! * 19.4,
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(SizeConfig.defaultSize! * 5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 5),
                        child: Image(
                          image: AssetImage('assets/images/img2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height:SizeConfig.defaultSize! * 1.5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.defaultSize! * 1.8,0,
                          SizeConfig.defaultSize! * 1.8, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Coffee',
                                style: TextStyle(
                                    color: const Color(0xFF213955),
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.defaultSize! * 1.8),
                              ),
                              Spacer(),
                              ContainerOfBestOfOffers(color: const Color(0xFF213955),text: 'Food',),
                              SizedBox(
                                width:SizeConfig.defaultSize! * 1,
                              ),
                              ContainerOfBestOfOffers(color: const Color(0xFF3AB44E),text: 'Food',)
                            ],
                          ),
                          SizedBox(
                            height:SizeConfig.defaultSize! * 0.5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: SizeConfig.defaultSize! * 21,
                                child:DescribeProduct()
                              ),
                              const Spacer(),
                              IconButton(
                               // padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
                                onPressed: () {},
                                color: const Color(0xFF3AB44E),
                                icon:const Icon(Icons.share)
                              ),
                              IconButton(
                                // padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
                                  onPressed: () {},
                                  color: const Color(0xFF3AB44E),
                                  icon:Image.asset('assets/icons/heart.png',color: const Color(0xFF3AB44E),),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:SizeConfig.defaultSize! * 0.4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right:SizeConfig.defaultSize! * 5,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height:SizeConfig.defaultSize! * 5.5,
                    width: SizeConfig.defaultSize! * 3.7,
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sale.png'),
                    ),
                  ),
                  Text(
                    ' 15 % ',
                    style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                        fontSize: SizeConfig.defaultSize! * 1.4,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
