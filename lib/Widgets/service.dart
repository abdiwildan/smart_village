import 'package:flutter/material.dart';
import 'package:smart_village/service/ktp.dart';

import '../Screens/detail_service_screen.dart';
import '../models/service_model.dart';
import 'image_container.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final services = Service.services;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: services.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context, 
                        DetailService.routeName,
                        arguments: services[index],
                      );
                    },
                    child: Row(
                      children: [
                        ImageContainer(
                          width: 80,
                          height: 80,
                          margin: const EdgeInsets.all(10.0),
                          borderRadius: 5,
                          imageUrl: services[index].imageUrl,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, '/ktp');
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  services[index].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })))
      ]),
    );
  }
}
