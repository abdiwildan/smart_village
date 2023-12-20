import 'package:flutter/material.dart';
import 'package:smart_village/Widgets/image_container.dart';
import 'package:smart_village/models/service_model.dart';

class DetailService extends StatelessWidget {
  const DetailService({super.key});

  static const routeName = '/service';

  @override
  Widget build(BuildContext context) {
    final service = ModalRoute.of(context)!.settings.arguments as Service;
    return ImageContainer(
        width: double.infinity,
        imageUrl: service.imageUrl,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          extendBodyBehindAppBar: true,
          body: ListView(
            children: [
              _NewsHeadLine(
                service: service,
              ),
              Container(
                
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                
                 color: Colors.white,
                ),
                
                child: Column(
                  children: [
                    Text(
                      service.title,
                      style: Theme.of(context).textTheme.bodyLarge,

                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      service.body,

                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class _NewsHeadLine extends StatelessWidget {
  const _NewsHeadLine({
    super.key,
    required this.service,
  });

  final Service service;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          Text(
            service.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 42,
              shadows: [
                const Shadow(offset: Offset(-2.0, -2.0), blurRadius: 2.0, color: Colors.white),
              ],
            ),
            
            
          ),
          Text(
            service.subtitle,
            style: const TextStyle(
              fontSize: 20,
              shadows: [
                Shadow(offset: Offset(-2.0, -2.0), blurRadius: 2.0, color: Colors.white),
              ],
              height: 1.25,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
