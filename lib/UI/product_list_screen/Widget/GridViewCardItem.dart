import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Domain/Entites/ProductResponseEntity.dart';
import '../../utils/my_assets.dart';
import '../../utils/my_colors.dart';


class GridViewCardItem extends StatelessWidget {
  bool isWishlisted = false;
  ProductResponseEntity productsEntity ;
  GridViewCardItem({required this.productsEntity});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 191.w,
      height: 237.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.network(
                    productsEntity.image??''
                    ,
                    fit: BoxFit.cover,
                    width: 191.w,
                    height: 128.h,
                  ),
                ),
                Positioned(
                  top: 5.h,
                  right: 2.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: IconButton(
                      color: AppColors.primaryColor,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: isWishlisted == true
                          ? const Icon(Icons.favorite_rounded)
                          : const Icon(
                        Icons.favorite_border_rounded,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                productsEntity.title??'',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.darkPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Row(
                children: [
                  Text(
                    "EGP ${productsEntity.price}",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.darkPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w, right: 8.w),
              child: Row(
                children: [
                  Text(
                    "Review (${productsEntity.rating!.rate})",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.darkPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Image.asset(
                    MyAssets.starIcon,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    splashColor: Colors.transparent,
                    child: Icon(
                      Icons.add_circle,
                      size: 32.sp,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            )
            // GridViewCardItemBody(
            //   productEntity: productEntity,
            // )
          ],
        ),
      ),
    );
  }
}
