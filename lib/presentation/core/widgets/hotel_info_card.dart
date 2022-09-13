import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/constants/asset_constant.dart';
import '../../../domain/core/constants/string_constants.dart';

class HotelInfoCard extends StatelessWidget {
  final String hotelName;
  final String hotelAddress;
  final String totalBuildings;
  final String totalPeople;
  final String houseName;

  const HotelInfoCard(
      {Key? key,
      required this.hotelName,
      required this.hotelAddress,
      required this.houseName,
      required this.totalBuildings,
      required this.totalPeople})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(minHeight: 40.h, minWidth: 400.w),
      height: 42.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Color(0xFF0A000000))],
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 100.w,
                child: Image.asset(
                  'assets/images/cardimage-homepage.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Text(
                    hotelName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 12,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12.5.sp,
                    child: SvgPicture.asset(
                      AssetConstant.editIcon,
                      width: 13.sp,
                      height: 13.sp,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12.5.sp,
                    child: SvgPicture.asset(
                      AssetConstant.deleteIcon,
                      width: 13.sp,
                      height: 13.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              SvgPicture.asset(
                AssetConstant.houseIcon,
                width: 13.sp,
                height: 13.sp,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                houseName,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 10.sp),
              ),
              SizedBox(
                width: 2.w,
              ),
              SvgPicture.asset(
                AssetConstant.buildingIcon,
                width: 13.sp,
                height: 13.sp,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                '$totalBuildings Habitaciones',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 10.sp),
              ),
              SizedBox(
                width: 4.w,
              ),
              SvgPicture.asset(
                AssetConstant.peopleIcon,
                width: 13.sp,
                height: 13.sp,
              ),
              SizedBox(
                width: 2.w,
              ),
              Flexible(
                child: Text(
                  '$totalPeople personas',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 10.sp),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 4.w,
              )
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(
              AssetConstant.locationIcon,
              width: 13.sp,
              height: 13.sp,
            ),
            SizedBox(
              width: 2.w,
            ),
            Flexible(
              child: Text(
                AuthConstants.firstLocation,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 9.sp),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
