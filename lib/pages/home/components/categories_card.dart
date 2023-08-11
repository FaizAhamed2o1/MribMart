import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/home/provider/home_provider.dart';
import 'package:sizer/sizer.dart';

class CategoriesCard extends ConsumerWidget {
  const CategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRef = ref.watch(categoriesDataProvider);
    return Container(
        height: 15.h,
        width: 28.w,
        // color: Colors.red,
        child: dataRef.when(
          data: (data) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.5.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 6.h,
                          width: 5.w,
                          child: Image.network(
                              data.data![index].categoryImagePath.toString(),
                              fit: BoxFit.contain),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          data.data![index].categoryTitle.toString(),
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          error: (error, stackTrace) {
            return Text(error.toString());
          },
          loading: () => CircularProgressIndicator(),
        ));
  }
}
