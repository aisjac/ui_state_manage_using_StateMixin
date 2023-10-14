import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:ui_state_manage/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ui State Control",
        ),
      ),
      body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return controller.obx((state) => ListView.builder(
                itemCount: state!.photos!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.grey[200],
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Id: "),
                                ),
                                Text(state!.photos![index].id.toString()),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: const Text("Title: "),
                                ),
                                Expanded(child: Text(state.photos![index].title ?? "")),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Description: "),
                                ),
                                 Expanded(child: Text(state.photos![index].description ?? "")),
                              ],
                            ),
                            Image.network(
                              state.photos![index].url ?? "",
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            onEmpty:const Center(
              child: Text("No Result Found"),
            ),
              onError: (error)=>
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(error.toString()),
                    FilledButton(onPressed: controller.callForDemoImages, child: Text("Retry")),
                  ],
                ),
              )
            );
          }),
    );
  }
}
