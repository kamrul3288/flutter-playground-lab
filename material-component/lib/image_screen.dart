import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';
import 'package:common/constant/ImagePath.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Images",
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              Row(
                children: [

                  //----------------Example 1--------------------
                  Expanded(
                    child: Image.asset(
                      ImagePath.bannerAirPlane,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),


                  //----------------Example 2 with corner radius--------------------
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        ImagePath.bannerAirPlane,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )
                ],
              ),


              Row(
                children: [

                  //----------------Example 3 with circle avatar--------------------
                  const Expanded(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(ImagePath.bannerAirPlane),
                      ),
                  ),
                  const SizedBox(width: 16,),

                  
                  //----------------Example 4 with circle avatar with circle stroke--------------------
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                        child: const ClipOval(
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(ImagePath.bannerAirPlane),
                          ),
                        ),
                      ),
                  ),
                ],
              ),


              //----------------Example 5 with network image--------------------
              const SizedBox(height: 30,),
              Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                height: 300,
                loadingBuilder: (context, child, progress) {
                  return progress == null ?
                  child :
                  const SizedBox(
                    height: 300,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },

                errorBuilder: (context, error, stackTrace) {
                  return SizedBox(
                    height: 300,
                    child: Center(
                      child: Text(error.toString()),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
